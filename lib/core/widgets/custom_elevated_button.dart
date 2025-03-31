import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../resources/app_colors.dart';
import '../resources/dimensions.dart';

class CustomElevatedButton extends StatelessWidget {
  final GestureTapCallback? onPressed;
  final Color? background;
  final bool isLoading;
  final bool isEnabled;
  final EdgeInsetsDirectional margin;
  final String title;
  final SvgGenImage? icon;
  final TextStyle? titleStyle;
  final double height;
  final double borderRadius;

  const CustomElevatedButton({
    required this.title,
    this.titleStyle,
    this.icon,
    this.onPressed,
    this.background,
    this.isLoading = false,
    this.isEnabled = true,
    this.margin = EdgeInsetsDirectional.zero,
    this.height = 48,
    this.borderRadius = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: Dimensions.paddingH8,
          backgroundColor: background ?? AppColors.primaryColor,
          minimumSize: Size(
            MediaQuery.of(context).size.width - 32,
            height,
          ),
          maximumSize: Size(
            MediaQuery.of(context).size.width - 32,
            height,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: !isLoading && isEnabled ? onPressed : null,
        child: Center(
          child: isLoading
              ? Container(
                  margin: const EdgeInsetsDirectional.only(end: 12),
                  width: 24,
                  height: 24,
                  child: const CircularProgressIndicator(),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8.0),
                        child: icon!.svg(matchTextDirection: true),
                      ),
                    Text(
                      title,
                      style: titleStyle ?? const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
