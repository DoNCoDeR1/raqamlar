import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'custom_back_button.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final bool disableBackButton;
  final Color? backButtonColor;
  final VoidCallback? onBackPressed;
  final Color? shadowColor;
  final Color backgroundColor;
  final double? elevation;
  final bool forceMaterialTransparency;
  final double? height;
  final ShapeBorder? shape;
  final PreferredSizeWidget? bottom;

  const CustomAppbar({
    this.onBackPressed,
    this.title,
    this.backgroundColor = Colors.white,
    this.titleStyle,
    this.titleWidget,
    this.backButtonColor,
    this.disableBackButton = false,
    this.actions,
    this.shadowColor,
    this.elevation,
    this.forceMaterialTransparency = false,
    this.bottom,
    this.height,
    this.shape,
    super.key,
  }) : assert(title != null || titleWidget != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: elevation ?? 0,
      shadowColor: shadowColor,
      child: AppBar(
        shape: shape,
        automaticallyImplyLeading: !disableBackButton,
        leading: disableBackButton
            ? null
            : CustomBackButton(
                onPressed: onBackPressed ?? () => context.router.popForced(),
                color: backButtonColor),
        forceMaterialTransparency: forceMaterialTransparency,
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: titleWidget ??
            Text(
              title ?? '',
              style: titleStyle,
            ),
        actions: actions,
        bottom: bottom,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        height ??
            AppBar().preferredSize.height + (bottom?.preferredSize.height ?? 0),
      );
}
