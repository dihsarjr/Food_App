import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';

class DetailsPage extends StatelessWidget {
//  String categoryName;
//  DetailsPage(this.categoryName);
  @override
  Widget build(BuildContext context) {
    final roteArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final categoryName = roteArgs['name'];
    final categoryId = roteArgs['id'];
    final categoryMeals = data.where((element) {
      return element.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
