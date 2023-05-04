import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCardItem.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

class NewsCardItemListView extends StatelessWidget {
  NewsCardItemListView({super.key, required this.newsCarditem});
  final List<NewsCardItemModel> newsCarditem;
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
