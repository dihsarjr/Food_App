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
          return Card(
              color: Colors.pinkAccent,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: Alignment(0.0, 0.0),
                      children: <Widget>[
                        Center(child: CircularProgressIndicator()),
                        Container(
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    NetworkImage(categoryMeals[index].imageUrl),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      child: Text(
                        categoryMeals[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ));
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
