import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItem.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

class NewsCardItemListView extends StatelessWidget {
  NewsCardItemListView({super.key});
  final List<NewsCardItemModel> newsCarditem = [
    NewsCardItemModel(
      image: "assets/images/Entertainment.jpeg",
      title: "TikTok,s head of Us Trust and Safety is leaving",
      description:
          "Eric Han, Tik Tok,s head of US trust and Safety and a key leader for the company,s USDS proposal to avoid a ban by the US government,is leaving this month, according to an internal company memo ",
    ),
    NewsCardItemModel(
      image: "assets/images/Entertainment.jpeg",
      title: "TikTok,s head of Us Trust and Safety is leaving",
      description:
          "Eric Han, Tik Tok,s head of US trust and Safety and a key leader for the company,s USDS proposal to avoid a ban by the US government,is leaving this month, according to an internal company memo ",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView.builder(
          itemCount: newsCarditem.length,
          itemBuilder: (context, index) =>
              NewsCardItem(newsCardItemModel: newsCarditem[index]),
        ),
      ),
    );
  }
}
