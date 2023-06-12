import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Models/NewsCardItem.dart';

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({
    super.key,
    required this.newsCardItemModel,
  });
  final NewsCardItemModel newsCardItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 116, 118, 143),
                          width: 1.2)),
                  child: AspectRatio(
                    aspectRatio: 370 / 230,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: "${newsCardItemModel.image}",
                      errorWidget: (context, _, __) {
                        return SizedBox(
                          child: Image.asset(
                            "assets/images/no-image-available-sign-vector-25152466.jpg",
                            fit: BoxFit.scaleDown,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${newsCardItemModel.title}",
                    softWrap: true,
                    style: const TextStyle(fontSize: 18, height: 1.5),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Text(
                      "${newsCardItemModel.description}",
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 14, color: Colors.grey, height: 1.5),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
