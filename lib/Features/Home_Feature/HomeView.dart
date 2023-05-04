import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
