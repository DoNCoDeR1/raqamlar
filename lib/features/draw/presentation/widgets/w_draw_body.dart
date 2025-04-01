import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

import '/core/resources/app_colors.dart';
import '/core/resources/dimensions.dart';
import '../../../../gen/assets.gen.dart';

class WDrawBody extends StatefulWidget {
  const WDrawBody({super.key});

  @override
  _WDrawBodyState createState() => _WDrawBodyState();
}

class _WDrawBodyState extends State<WDrawBody> {
  final List<Offset?> _points = [];
  final GlobalKey _globalKey = GlobalKey();

  void _clearCanvas() {
    setState(() {
      _points.clear();
    });
  }

  Future<void> _captureDrawing() async {
    try {
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/drawing.png';
      final file = File(filePath);
      await file.writeAsBytes(pngBytes);
    } catch (e) {
      debugPrint("Error capturing drawing: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.paddingTop8Bottom32,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor),
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(42)),
              color: Colors.white,
            ),
            height: double.infinity,
            child: RepaintBoundary(
              key: _globalKey,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    RenderBox box = context.findRenderObject() as RenderBox;
                    Offset localPosition =
                        box.globalToLocal(details.globalPosition);

                    // Ensure touches are within bounds
                    if (localPosition.dx >= 0 &&
                        localPosition.dx <= box.size.width &&
                        localPosition.dy >= 0 &&
                        localPosition.dy <= box.size.height) {
                      _points.add(localPosition);
                    }
                  });
                },
                onPanEnd: (_) => _points.add(null),
                child: CustomPaint(
                  painter: _DrawingPainter(_points),
                  child: Container(), // Needed to capture gestures
                ),
              ),
            ),
          ),

          // Background image (not part of the drawing)
          Positioned(
            top: 0,
            left: 0,
            child: GestureDetector(
              onTap: _captureDrawing,
              child: Assets.png.one.image(height: 120),
            ),
          ),

          // Clear Button (Not drawn)
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: _clearCanvas,
              behavior: HitTestBehavior.translucent,
              child: Container(
                padding: Dimensions.paddingV12H20.copyWith(right: 24, left: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(42)),
                  color: AppColors.darkGrey,
                ),
                child: Assets.png.clear.image(width: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawingPainter extends CustomPainter {
  final List<Offset?> points;

  _DrawingPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round;

    // Clip the drawing area
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
