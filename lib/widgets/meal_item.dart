import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/models/meal_model.dart';

class MealItem extends StatelessWidget {
  final String image;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem(this.image, this.title, this.duration, this.complexity,
      this.affordability);

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return '';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return '';
    }
  }

  void _onTap() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.black26,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      FittedBox(child: Text('$duration min'))
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    FittedBox(child: Text(affordabilityText))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.work),
                    FittedBox(child: Text(complexityText))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
