import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
//  String categoryName;
//  DetailsPage(this.categoryName);
  @override
  Widget build(BuildContext context) {
    final roteArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final categoryName = roteArgs['name'];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: Container(
          height: 500,
          color: Colors.black,
        ));
  }
}