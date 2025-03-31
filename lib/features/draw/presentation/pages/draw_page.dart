import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raqamlar/core/widgets/w_bottom_button.dart';
import 'package:raqamlar/features/draw/presentation/widgets/w_draw_body.dart';

import '/core/widgets/custom_appbar.dart';
import '/core/widgets/custom_back_button.dart';

@RoutePage()
class DrawPage extends StatelessWidget {
  const DrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          Transform.rotate(
            angle: 3.14,
            child: CustomBackButton(onPressed: () {}),
          )
        ],
        elevation: 4,
        forceMaterialTransparency: true,
        shadowColor: Colors.black.withOpacity(0.25),
        title: '1',
        onBackPressed: () {},
      ),
      body: const WDrawBody(),
      bottomNavigationBar: WBottomButton(
        title: 'Baholash',
        onPressed: () {},
      ),
    );
  }
}
