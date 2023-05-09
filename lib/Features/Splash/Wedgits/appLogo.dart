import 'package:flutter/material.dart';

class NewsLogo extends StatelessWidget {
  const NewsLogo({super.key, required this.logoSize, @required this.part1="News"});
  final double logoSize;
  final String part1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          part1,
          style: TextStyle(
              fontSize: logoSize,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        Text(
          "Cloud",
          style: TextStyle(
              fontSize: logoSize,
              fontWeight: FontWeight.w600,
              color: Colors.yellow),
        )
      ],
    );
  }
}
