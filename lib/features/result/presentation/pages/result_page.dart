import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/app_colors.dart';

import '/core/widgets/custom_appbar.dart';
import '/core/widgets/w_bottom_button.dart';
import '/features/draw/domain/entity/number_entity.dart';
import '../../../../config/app_router.gr.dart';
import '../widgets/w_result_body.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  final String? percentage;
  final NumberEntity? numberEntity;
  final File? image;

  const ResultPage({
    super.key,
    this.percentage,
    this.numberEntity,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          Transform.rotate(
            angle: 3.14,
          )
        ],
        titleStyle:  const TextStyle(
          color: AppColors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        title: "Natija",
        disableBackButton: true,
      ),
      body: const WResultBody(),
      bottomNavigationBar: WBottomButton(
        title: "Yana",
        onPressed: () {
          context.router.replace(const DrawRoute());
        },
      ),
    );
  }
}
