import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di_container.dart';
import '../bloc/draw_bloc.dart';
import 'draw_view.dart';

@RoutePage()
class DrawPage extends StatelessWidget {
  const DrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DrawBloc>(
      create: (context) => DrawBloc(ls())..add(const DrawEvent.init()),
      child: const DrawView(),
    );
  }
}
