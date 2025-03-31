import 'package:flutter/material.dart';

double getBottomPadding(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom == 0
      ? 16
      : MediaQuery.of(context).viewPadding.bottom;
}
