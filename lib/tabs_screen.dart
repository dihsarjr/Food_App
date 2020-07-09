import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'main.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
    );
  }

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
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.pink,
                ),
                buildListTile('home', Icons.home),
                buildListTile('settings', Icons.settings),
                buildListTile('favorite', Icons.favorite),
              ],
            ),
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
