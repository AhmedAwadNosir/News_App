import 'package:flutter/material.dart';

class NewsCardItemModel {
  final String? image;
  final String? title;
  final String? description;
  final String? content;

  NewsCardItemModel({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.content
  });

  factory NewsCardItemModel.formjson(dynamic jsondata) {
    return NewsCardItemModel(
      image: jsondata["urlToImage"],
      title: jsondata["title"],
      description: jsondata["description"],
      content: jsondata["url"],
    );
  }
}
