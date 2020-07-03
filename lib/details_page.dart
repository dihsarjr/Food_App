import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String categoryName;
  DetailsPage(this.categoryName);
  @override
  Widget build(BuildContext context) {
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
