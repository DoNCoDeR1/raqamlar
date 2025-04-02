import 'package:flutter/material.dart';

import 'app_colors.dart';

const _font = '';

class CustomStyle {
  CustomStyle._();

  static const cStyleBlack32WBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    //fontFamily: _font,
  );
  static const black14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Urbanist',
    color: AppColors.black,
  );
  static const black14w700 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    height: 18 / 14,
  );
}
