import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocScope extends StatelessWidget {
  final Widget child;

  const BlocScope({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return child;
    // MultiBlocProvider(
    //   providers: const [],
    //   child: child,
    // );
  }
}
