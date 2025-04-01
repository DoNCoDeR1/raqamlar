import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/dimensions.dart';

final List<Color> colorsOfPros = [
  const Color(0xFF23B59C), //alo
  const Color(0xFF4823B5), //yaxshi
  const Color(0xFFB52325) //yomon
];

class WResultBody extends StatelessWidget {
  final int? foiz;

  const WResultBody({
    super.key,
    this.foiz,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 200,
          margin: const EdgeInsets.only(
            top: 8,
            bottom: 2,
          ),
          color: Colors.white,
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
                      fontFamily: "Urbanist",
                      color: foiz! < 50
                          ? colorsOfPros[3]
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
                      fontFamily: "Urbanist",
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
