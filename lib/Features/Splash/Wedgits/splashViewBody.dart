import 'package:flutter/material.dart';

import 'appLogo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> feadinganimation;
  @override
  void initState() {
    animation();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NewsLogo(logoSize: feadinganimation.value),
      ),
    );
  }

  void animation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    feadinganimation =
        Tween<double>(begin: 48, end: 60).animate(animationController);
    animationController.repeat(reverse: true);
    animationController.addListener(() {
      setState(() {});
    });
  }
}
