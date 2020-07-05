import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  MealDetails(this.title, this.imageUrl, this.ingredients, this.steps);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
                height: 200,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(15),
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.yellow,
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          '#${index + 1}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        title: Text(
                          ingredients[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    );
                  },
                  itemCount: ingredients.length,
                ),
              ),
              Text(
                'Steps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(25),
                height: 300,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.pinkAccent,
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          '#${index + 1}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        title: Text(
                          steps[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  itemCount: steps.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
