import 'package:flutter/material.dart';
import 'package:newsapp/Features/Splash_feature/splashView.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SplashView.id: (context) => SplashView()},
      initialRoute: SplashView.id,
    );
  }
}
