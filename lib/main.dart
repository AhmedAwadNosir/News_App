import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeView.dart';
import 'package:newsapp/Features/Splash_feature/splashView.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
