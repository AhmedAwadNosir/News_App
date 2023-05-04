import 'package:flutter/material.dart';

class NewsCardItemModel {
  final String? image;
  final String? title;
  final String? description;

  NewsCardItemModel({
    @required this.image,
    @required this.title,
    @required this.description,
  });

  factory NewsCardItemModel.formjson(dynamic jsondata) {
    return NewsCardItemModel(
      image: jsondata["urlToImage"],
      title: jsondata["title"],
      description: jsondata["description"],
    );
  }
}
