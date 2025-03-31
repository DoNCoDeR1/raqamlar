import 'package:flutter/material.dart';

import '/core/resources/app_colors.dart';
import '/core/resources/dimensions.dart';

class WDrawBody extends StatelessWidget {
  const WDrawBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimensions.paddingTop8Bottom32,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(42)),
        color: Colors.white,
      ),
      height: double.infinity,
    );
  }
}
