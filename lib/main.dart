import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home/HomeView.dart';
import 'package:newsapp/Features/Splash/splashView.dart';
import 'package:newsapp/Utils/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            routes: {
              SplashView.id: (context) => const SplashView(),
              HomeView.id: (context) => const HomeView(),
            },
            initialRoute: SplashView.id,
          );
        },
      );
}
