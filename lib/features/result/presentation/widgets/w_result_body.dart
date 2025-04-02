import 'dart:io';

import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/app_colors.dart';
import 'package:raqamlar/core/resources/dimensions.dart';
import 'package:raqamlar/features/draw/domain/entity/number_entity.dart';
import 'package:raqamlar/features/result/presentation/widgets/w_motivation.dart';

final List<Color> colorsOfPros = [
  const Color(0xFF23B59C), //alo
  const Color(0xFF4823B5), //yaxshi
  const Color(0xFFB52325) //yomon
];

class WResultBody extends StatelessWidget {
  final int? foiz;
  final NumberEntity? entity;
  final File? file;

  const WResultBody({
    super.key,
    this.foiz,
    this.entity,
    this.file,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.maxFinite,
          height: 200,
          margin: const EdgeInsets.only(
            top: 8,
            bottom: 2,
          ),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              entity?.image ?? const SizedBox(height: 109, width: 68),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: file != null
                        ? Image.file(file!, width: 68, height: 130)
                        : null,
                  ),

                  Text(
                    "Sizniki",
                    style: TextStyle(
                      color: AppColors.black.withOpacity(0.35),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 76,
          padding: Dimensions.paddingLeft16,
          color: Colors.white,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "$foiz%",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: foiz! < 50
                          ? colorsOfPros[2]
                          : foiz! < 75
                              ? colorsOfPros[1]
                              : colorsOfPros[0],
                    ),
                  ),
                  const TextSpan(
                    text: " aniq yozdingiz",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: Dimensions.paddingAll16,
          child: WMotivation(title: "sth", subtitle: "sth"),
        ),
      ],
    );
  }
}
