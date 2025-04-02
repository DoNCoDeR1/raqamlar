import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/resources/status.dart';
import '../../domain/entity/number_entity.dart';
import '../../domain/repository/draw_repo.dart';

part 'draw_bloc.freezed.dart';
part 'draw_event.dart';
part 'draw_state.dart';

late Interpreter _interpreter;

class DrawBloc extends Bloc<DrawEvent, DrawState> {
  final DrawRepo drawRepo;
  final GlobalKey globalKey = GlobalKey();

  DrawBloc(this.drawRepo) : super(DrawState(globalKey: GlobalKey())) {
    on<_Init>(_init);
    on<_ClearCanvas>(_clearCanvas);
    on<_NextNumber>(_nextNumber);
    on<_PrevNumber>(_prevNumber);
    on<_Submit>(_submit);
    on<_AddPoint>(_addPoint);
  }

  final List<NumberEntity> numbersData = numbers;

  void _init(DrawEvent event, Emitter<DrawState> emit) {
    if (numbersData.isNotEmpty) {
      emit(state.copyWith(number: numbersData.first));
    }
  }

  void _clearCanvas(DrawEvent event, Emitter<DrawState> emit) {
    emit(state.copyWith(points: []));
  }

  void _nextNumber(DrawEvent event, Emitter<DrawState> emit) {
    int currentIndex = numbersData.indexOf(state.number!);
    if (currentIndex >= 0 && currentIndex < numbersData.length - 1) {
      emit(state.copyWith(number: numbersData[currentIndex + 1], points: []));
    }
  }

  void _prevNumber(DrawEvent event, Emitter<DrawState> emit) {
    int currentIndex = numbersData.indexOf(state.number!);
    if (currentIndex > 0) {
      emit(state.copyWith(number: numbersData[currentIndex - 1], points: []));
    }
  }

  void _addPoint(_AddPoint event, Emitter<DrawState> emit) {
    final updatedPoints = List<Offset?>.from(state.points)..add(event.point);
    emit(state.copyWith(points: updatedPoints));
  }

  Future<double> _predictSimilarity(
      Uint8List imageBytes, int targetNumber) async {
    img.Image? image = img.decodeImage(imageBytes);
    if (image == null) return 0.0;

    img.Image resizedImage = img.copyResize(image, width: 28, height: 28);

    List<List<List<int>>> inputImage = List.generate(
      28,
      (y) => List.generate(
        28,
        (x) {
          final pixel = resizedImage.getPixel(x, y);
          final grayscale =
              (pixel.r + pixel.g + pixel.b) ~/ 3; // Convert to grayscale
          return [grayscale];
        },
      ),
    );

    var input = [inputImage];
    var output = List.filled(10, 0.0).reshape([1, 10]);

    // Ensure _interpreter is defined and initialized elsewhere
    _interpreter.run(input, output);

    List<double> probabilities = output[0];
    double predictedConfidence = probabilities[targetNumber];
    double bestConfidence = probabilities.reduce((a, b) => a > b ? a : b);

    return ((predictedConfidence / bestConfidence) * 100).clamp(0, 100);
  }

  Future<void> _submit(_Submit event, Emitter<DrawState> emit) async {
    emit(state.copyWith(status: Status.loading));

    if (state.globalKey?.currentContext == null) {
      emit(state.copyWith(
          status: Status.failed,
          error: ServerFailure(errorMessage: "Global key is null")));
      return;
    }

    try {
      RenderRepaintBoundary boundary = state.globalKey!.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) {
        emit(state.copyWith(
            status: Status.failed,
            error: ServerFailure(errorMessage: "Failed to get image bytes")));
        return;
      }

      Uint8List pngBytes = byteData.buffer.asUint8List();
      int targetNumber = state.number?.number ?? -1;
      double similarity = await _predictSimilarity(pngBytes, targetNumber);

      emit(state.copyWith(
          status: Status.loaded, percent: similarity.toString()));
    } catch (e) {
      emit(state.copyWith(
          status: Status.failed,
          error: ServerFailure(errorMessage: e.toString())));
    }
  }
}
