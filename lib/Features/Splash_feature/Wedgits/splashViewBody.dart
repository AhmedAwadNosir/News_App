import 'package:flutter/material.dart';

import 'appLogo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: NewsLogo(logoSize: 48),
      ),
    );
  }
}
