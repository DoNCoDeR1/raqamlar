import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/functions.dart';

import '../../gen/assets.gen.dart';
import '../resources/dimensions.dart';
import 'custom_elevated_button.dart';

class WBottomButton extends StatelessWidget {
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

  const WBottomButton({
    super.key,
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimensions.paddingAll16.copyWith(
        bottom: getBottomPadding(context),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: CustomElevatedButton(
        onPressed: onPressed,
        background: background,
        isLoading: isLoading,
        isEnabled: isEnabled,
        margin: margin,
        title: title,
        icon: icon,
      ),
    );
  }
}
