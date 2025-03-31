import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
            angle: 180 * 3.14 / 180,
            child: CustomBackButton(onPressed: () {}),
          )
        ],
        elevation: 4,
        forceMaterialTransparency: true,
        shadowColor: Colors.black.withOpacity(0.25),
        title: '1',
        onBackPressed: () {},
      ),
      body: const Placeholder(),
    );
  }
}
