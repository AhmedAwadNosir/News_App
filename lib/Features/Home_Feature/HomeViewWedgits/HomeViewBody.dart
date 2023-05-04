import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/CategoryItemListView.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItem.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItemListView.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/appLogo.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const NewsLogo(logoSize: 28),
            CategoryItemListView(),
            NewsCardItemListView()
          ],
        ),
      ),
    );
  }
}


