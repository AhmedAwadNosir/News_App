import 'package:dio/dio.dart';

import '../Models/NewsCardItem.dart';

abstract class NewsApiServices {
  static Future<List<NewsCardItemModel>> featchData() async {
    final dio = Dio();
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/everything?q=bitcoin&apiKey=ad7a29fc84104227ad0b29c458b753ef");
      List<NewsCardItemModel> News = parseData(response);
      return News;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode != 404) {
          var errorMessage = e.response?.data["message"];
          throw Exception(errorMessage);
        } else {
          throw Exception("Try Again Later,Server Error!");
        }
      } else {
        throw Exception("Tray Again Later,Somthing Wrong");
      }
    }
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
