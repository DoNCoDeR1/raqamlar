import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../resources/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;

  const CustomBackButton({
    required this.onPressed,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsetsDirectional.only(
          start: 16,
          top: 8,
          bottom: 8,
        ),
        padding: const EdgeInsetsDirectional.all(6),
        decoration: BoxDecoration(
          color: color ?? AppColors.isabella,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Assets.svg.arrowLeft.svg(matchTextDirection: true),
      ),
    );
  }
}
