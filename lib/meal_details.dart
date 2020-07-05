import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  final String title;
  MealDetails(this.title);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(child: Text(title)),
      ),
    );
  }
}
