import 'package:flutter/material.dart';
import 'package:newsapp/Features/News_Details/News_Details_View.dart';
import 'package:newsapp/Models/NewsCardItem.dart';
import 'package:newsapp/Utils/NewsApiServieces.dart';

import 'NewsCardItem.dart';

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
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              var currentViews = newsCarditem[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NewsDetailsView(
                      news: currentViews,
                    );
                  },
                ),
              );
            },
            child: NewsCardItem(newsCardItemModel: newsCarditem[index])),
      ),
    );
  }
}
