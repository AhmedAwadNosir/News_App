import 'package:flutter/material.dart';

import '../../../Utils/NewsApiServieces.dart';
import 'NewsCardItemListView.dart';

class NewsItemlistViewFutureBuilder extends StatelessWidget {
  const NewsItemlistViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsApiServices.featchData(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return NewsCardItemListView(newsCarditem: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
