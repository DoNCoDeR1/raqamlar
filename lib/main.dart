import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/app_router.dart';
import 'core/di/bloc_scope.dart';
import 'core/di/di_container.dart';
import 'core/resources/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(BlocScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Raqamlar app',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routerConfig: _router.config(),
    );
  }
}
