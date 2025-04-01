import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '/core/resources/app_colors.dart';
import '/core/resources/dimensions.dart';

class WDrawBody extends StatelessWidget {
  const WDrawBody({super.key});

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
          ),
          Assets.png.one.image(height: 120),
          Positioned(
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.translucent,
              child: Container(
                padding: Dimensions.paddingV12H20.copyWith(right: 24, left: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(42),),
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
