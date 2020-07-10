import 'package:flutter/material.dart';
import 'package:food/settings.dart';

import 'favorite_screen.dart';
import 'main.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return FlatButton(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: tapHandler,
      ),
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
                buildListTile('home', Icons.home, () {
                  _tap();
                }),
                buildListTile('settings', Icons.settings, () {
                  _tapb();
                }),
                buildListTile('favorite', Icons.favorite, () {
                  _tapc();
                }),
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

  _tap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TabsScreen(),
      ),
    );
  }

  _tapb() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsPage(),
      ),
    );
  }

  _tapc() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Favorite(),
      ),
    );
  }
}
