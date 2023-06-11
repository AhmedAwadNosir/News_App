import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home/HomeView.dart';
import 'package:newsapp/Features/Splash/splashView.dart';
import 'package:newsapp/Utils/theme_provider.dart';

void main() async {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
