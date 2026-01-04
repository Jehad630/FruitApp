import 'package:flutter/material.dart';
import 'package:fruithub/core/Funcetion/on_generate_route.dart';
import 'package:fruithub/features/View/presentaion/view/splash_view.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
