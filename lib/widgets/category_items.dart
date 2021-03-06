import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final Color color;
  final String id;

  CategoryItem(this.categoryName, this.color, this.id);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('route', arguments: {
          'id': id,
          'name': categoryName,
          'color': color,
        });

//        Navigator.push(context,
//            MaterialPageRoute(builder: (context) => DetailsPage(categoryName)));
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
