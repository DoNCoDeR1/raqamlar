import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class WLoader extends StatelessWidget {
  final double? size;
  final Color? color;

  const WLoader({
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? SizedBox(
            height: size,
            width: size,
            child: Center(
              child: CupertinoActivityIndicator(
                color: color ?? AppColors.primaryColor.withOpacity(0.6),
              ),
            ),
          )
        : SizedBox(
            height: size,
            width: size,
            child: Center(
              child: CircularProgressIndicator(
                color: color ?? AppColors.primaryColor.withOpacity(0.6),
              ),
            ),
          );
  }
}
