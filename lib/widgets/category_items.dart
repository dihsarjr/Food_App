import 'package:flutter/material.dart';
import 'package:food/details_page.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final Color color;

  CategoryItem(this.categoryName, this.color);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsPage(categoryName)));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Container(
          child: Text(categoryName),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: [color, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
