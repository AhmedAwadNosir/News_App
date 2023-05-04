import 'package:flutter/material.dart';
import 'package:newsapp/Features/Home_Feature/HomeViewWedgits/NewsCategoryItem.dart';
import 'package:newsapp/Models/CategoryItemModel.dart';

class CategoryItemListView extends StatelessWidget {
  CategoryItemListView({super.key});
  final List<CategoryItemModel> Categorys = [
    CategoryItemModel(Image: "assets/images/Busniss.jpeg", title: "Business"),
    CategoryItemModel(Image: "assets/images/science.jpeg", title: "Science"),
    CategoryItemModel(Image: "assets/images/Health.jpeg", title: "Health"),
    CategoryItemModel(Image: "assets/images/Sports.jpeg", title: "Sports"),
    CategoryItemModel(
        Image: "assets/images/Entertainment.jpeg", title: "Entertainment"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categorys.length,
          itemBuilder: (context, index) =>
              NewsCategoryItem(category: Categorys[index]),
        ),
      ),
    );
  }
}
