import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String image;
  final String title;
  MealItem(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.pinkAccent,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(
                alignment: Alignment(0.0, 0.0),
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                        height: 200,
                        child: FittedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
