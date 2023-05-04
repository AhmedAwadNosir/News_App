import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({
    super.key, required this.newsCardItemModel,
  });
  final NewsCardItemModel newsCardItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Expanded(
        child: Container(
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: SizedBox(
                    height: 215,
                    child: AspectRatio(
                      aspectRatio: 370 / 230,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(newsCardItemModel.image),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      newsCardItemModel.title,
                      softWrap: true,
                      style: TextStyle(fontSize: 26, height: 1.5),
                    ),
                    SizedBox(
                      width: 325,
                      child: Text(
                        newsCardItemModel.description,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey, height: 1.5),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
