import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/CategoryItemListView.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItem.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItemListView.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/appLogo.dart';
import 'package:newsapp/Utils/NewsApiServieces.dart';

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
            FutureBuilder(
                future: NewsApiServices.featchData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasError) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return NewsCardItemListView(newsCarditem: snapshot.data!);
                    } else {
                      return const CircularProgressIndicator();
                    }
                  } else {
                    return Text(
                      snapshot.error.toString(),
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
