import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raqamlar/core/widgets/custom_appbar.dart';
import 'package:raqamlar/core/widgets/w_bottom_button.dart';

import '../widgets/w_result_body.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          Transform.rotate(
            angle: 3.14,
          )
        ],
        titleStyle: const TextStyle(
          color: Color(0xFF1D1E25),
          fontFamily: "Urbanist",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        title: "Natija",
        disableBackButton: true,
      ),
      body: const WResultBody(),
      bottomNavigationBar: WBottomButton(
        title: "Yana",
        onPressed: () {},
      ),
    );
  }
}
