import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/widgets/meal_item.dart';

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
          return MealItem(
              categoryMeals[index].imageUrl,
              categoryMeals[index].title,
              categoryMeals[index].duration,
              categoryMeals[index].complexity,
              categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
