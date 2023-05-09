import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryItemModel.dart';
import 'package:newsapp/Utils/NewsApiServieces.dart';

import 'CategoryNewsListViewBuilder.dart';

class  CategoryPageViewBody extends StatelessWidget {
   CategoryPageViewBody({super.key, required this.category});
  CategoryItemModel category;
  @override
  Widget build(BuildContext context) {
    NewsApiServices.CategoryKey = category.title.toLowerCase();
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CategoryNewsListViewBuilder(),
        )
      ],
    );
  }
}
