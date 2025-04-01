import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/dimensions.dart';

class WResultBody extends StatelessWidget {
  const WResultBody({super.key});

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
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "86%",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Urbanist",
                      color: Color(0xFF23B59C),
                    ),
                  ),
                  TextSpan(
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
