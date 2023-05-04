import 'package:dio/dio.dart';

import '../Models/NewsCardItem.dart';

abstract class NewsApiServices{
  static Future<List<NewsCardItemModel>> featchData() async {
  final dio = Dio();
  var response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=ad7a29fc84104227ad0b29c458b753ef");
  List<NewsCardItemModel> News = parseData(response);
  return News;
}

static List<NewsCardItemModel> parseData(Response<dynamic> response) {
  List<NewsCardItemModel> News = [];
  var items = response.data["articles"];
  for (var news in items) {
    News.add(NewsCardItemModel.formjson(news));
  }
  return News;
}
}