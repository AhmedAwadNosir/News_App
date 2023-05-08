import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/CategoryItemListView.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItemListView.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/appLogo.dart';
import 'package:newsapp/Utils/NewsApiServieces.dart';

import 'NewsItemlistViewFutureBuilder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverToBoxAdapter(
              child: NewsLogo(logoSize: 28),
            ),
            SliverToBoxAdapter(
              child: CategoryItemListView(),
            ),
            const SliverToBoxAdapter(
              child: NewsItemlistViewFutureBuilder(),
            )
          ],
        ),
      ),
    );
  }
}
