import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home/Wedgits/CategoryItemListView.dart';
import 'package:newsapp/Features/Home/Wedgits/NewsCardItemListView.dart';
import 'package:newsapp/Features/Home/Wedgits/change_theme_button.dart';
import 'package:newsapp/Features/Splash/Wedgits/appLogo.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NewsLogo(logoSize: 28),
                  SizedBox(width: 75,),
                  ChangeThemeButton(),
                ],
              ),
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
