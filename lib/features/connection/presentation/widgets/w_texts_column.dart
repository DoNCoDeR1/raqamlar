import 'package:flutter/material.dart';

import '/core/resources/dimensions.dart';

class WTextsColumn extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? titleColor;

  const WTextsColumn({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.paddingH16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: Dimensions.paddingV6,
            child: Text(
              title,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
