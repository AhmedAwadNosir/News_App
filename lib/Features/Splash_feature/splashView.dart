import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/Features/Home_Feature/HomeView.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/splashViewBody.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const id = "SplashView";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigationControl();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashViewBody();
  }

  void navigationControl() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, HomeView.id);
      },
    );
  }
}
