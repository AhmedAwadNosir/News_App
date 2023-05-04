import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/splashViewBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const id = "SplashView";
  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}
