import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryItemModel.dart';

class NewsCategoryItem extends StatelessWidget {
  const NewsCategoryItem({
    super.key, required this.category,
  });
  final CategoryItemModel category;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
                height: 150,
                child: AspectRatio(
                    aspectRatio: 200 / 140,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(category.Image),),),),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6)),
          child:  Text(
            category.title,
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
        )
      ],
    );
  }
}
