import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final Color color;

  CategoryItem(this.categoryName, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(categoryName),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(gradient:LinearGradient(colors: [
        Colors.blue,
        Colors.green
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight)),
    );
  }
}
