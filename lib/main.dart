import 'package:flutter/material.dart';
import 'router/router.dart';
import 'styles/colors_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeColors.colorBackgroup,
        colorScheme: ColorScheme.fromSeed(seedColor: ThemeColors.colorMain),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.start,
      routes: AppRoutes.routes,
    );
  }
}
