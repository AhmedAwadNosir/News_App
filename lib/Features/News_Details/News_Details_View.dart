import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Features/Splash_feature/Wedgits/appLogo.dart';
import 'package:newsapp/Models/NewsCardItem.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailsView extends StatefulWidget {
  NewsDetailsView({super.key, required this.news});
  NewsCardItemModel news;
  @override
  State<NewsDetailsView> createState() => _NewsDetailsViewState();
}

class _NewsDetailsViewState extends State<NewsDetailsView> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse("${widget.news.content}"),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const NewsLogo(logoSize: 25),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
      
    );
  }
}
