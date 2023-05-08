import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItem.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

class NewsCardItemListView extends StatelessWidget {
  const NewsCardItemListView({super.key, required this.newsCarditem});
  final List<NewsCardItemModel> newsCarditem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: newsCarditem.length,
        itemBuilder: (context, index) =>
            NewsCardItem(newsCardItemModel: newsCarditem[index]),
      ),
    );
  }
}
