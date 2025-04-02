import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/resources/app_colors.dart';
import '/core/resources/dimensions.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/draw_bloc.dart';

class WDrawBody extends StatelessWidget {
  final GlobalKey? globalKey;

  const WDrawBody({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawBloc, DrawState>(
      builder: (context, state) {
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
                  key: globalKey,
                  child: GestureDetector(
                    onPanUpdate: (details) {
                      RenderBox box = context.findRenderObject() as RenderBox;
                      Offset localPosition =
                          box.globalToLocal(details.globalPosition);
                      if (localPosition.dx >= 0 &&
                          localPosition.dx <= box.size.width &&
                          localPosition.dy >= 0 &&
                          localPosition.dy <= box.size.height) {
                        context
                            .read<DrawBloc>()
                            .add(DrawEvent.addPoint(localPosition));
                      }
                    },
                    onPanEnd: (_) => context
                        .read<DrawBloc>()
                        .add(const DrawEvent.addPoint(null)),
                    child: CustomPaint(
                      painter: _DrawingPainter(
                          state.points, state.number?.color ?? AppColors.black),
                      child: Container(),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: state.number?.image ?? Assets.png.one.image(height: 120),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: GestureDetector(
                  onTap: () => context
                      .read<DrawBloc>()
                      .add(const DrawEvent.clearCanvas()),
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    padding:
                        Dimensions.paddingV12H20.copyWith(right: 24, left: 18),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(42)),
                      color: AppColors.darkGrey,
                    ),
                    child: Assets.png.clear.image(width: 24),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DrawingPainter extends CustomPainter {
  final List<Offset?> points;
  final Color color;

  _DrawingPainter(this.points, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 20.0
      ..strokeCap = StrokeCap.round;

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
