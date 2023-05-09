import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home/HomeView.dart';
import 'package:newsapp/Features/Splash/splashView.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

void main() async {
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
