import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'main.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                text: 'Category',
              ),
              Tab(
                text: 'Favorite',
              ),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              MyHomePage(),
              Favorite(),
            ],
          ),
        ));
  }
}
