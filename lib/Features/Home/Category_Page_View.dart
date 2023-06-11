import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home/Wedgits/Category_Page_View_Body.dart';
import 'package:newsapp/Features/Splash/Wedgits/appLogo.dart';
import 'package:newsapp/Models/CategoryItemModel.dart';

class CategoryPageView extends StatelessWidget {
  CategoryPageView({super.key, required this.categroy});
  CategoryItemModel categroy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        title: NewsLogo(logoSize: 25, part1: categroy.title),
        centerTitle: true,
      ),
      body: CategoryPageViewBody(category: categroy),
    );
  }
}
