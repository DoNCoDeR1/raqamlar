import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/resources/status.dart';
import '../../domain/entity/drawing_param.dart';
import '../../domain/entity/number_entity.dart';
import '../../domain/repository/draw_repo.dart';

part 'draw_bloc.freezed.dart';
part 'draw_event.dart';
part 'draw_state.dart';

class DrawBloc extends Bloc<DrawEvent, DrawState> {
  final DrawRepo drawRepo;

  DrawBloc(this.drawRepo) : super(DrawState(globalKey: GlobalKey())) {
    on<_Init>(_init);
    on<_ClearCanvas>(_clearCanvas);
    on<_NextNumber>(_nextNumber);
    on<_PrevNumber>(_prevNumber);
    on<_Submit>(_submit);
    on<_AddPoint>(_addPoint);
  }

  final numbersData = numbers;
  int i = 0;

  void _init(DrawEvent event, Emitter<DrawState> emit) {
    emit(state.copyWith(number: numbersData.first));
  }

  void _clearCanvas(DrawEvent event, Emitter<DrawState> emit) {
    emit(state.copyWith(points: []));
  }

  void _nextNumber(DrawEvent event, Emitter<DrawState> emit) {
    emit(state.copyWith(
        number: numbersData[numbersData.indexOf(state.number!) + 1],
        points: []));
  }

  void _prevNumber(DrawEvent event, Emitter<DrawState> emit) {
    emit(state.copyWith(
        number: numbersData[numbersData.indexOf(state.number!) - 1 == -1
            ? numbersData.length - 1
            : numbersData.indexOf(state.number!) - 1],
        points: []));
  }

  void _addPoint(_AddPoint event, Emitter<DrawState> emit) {
    final updatedPoints = List<Offset?>.from(state.points)..add(event.point);
    emit(state.copyWith(points: updatedPoints));
  }

  Future<void> _submit(DrawEvent event, Emitter<DrawState> emit) async {
    i ++;
    emit(state.copyWith(status: Status.loading));
    RenderRepaintBoundary boundary = state.globalKey?.currentContext!
        .findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();
    final directory = await getApplicationDocumentsDirectory();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final filePath = '${directory.path}/drawing_$timestamp.png';
    final file = File(filePath);
    await file.writeAsBytes(pngBytes);
    final response = await drawRepo.submit(DrawingParams(
        image: file, number: (state.number?.number ?? -1).toString()));

    response.fold(
      (l) => emit(state.copyWith(status: Status.failed, error: l)),
      (r) {
        print(r);
        print(r);
        print(r);
        emit(
          state.copyWith(
            status: Status.loaded,
            percent: r,
            imageFile: file,
          ),
        );
      },
    );
  }
}
