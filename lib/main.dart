import 'package:flutter/material.dart';
import 'package:food/details_page.dart';
import 'package:food/dummy_data.dart';
import 'package:food/tabs_screen.dart';
import 'package:food/widgets/category_items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: TabsScreen(),
      routes: {
        'route': (context) => DetailsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_DATA
          .map((categoryData) => CategoryItem(
              categoryData.title, categoryData.color, categoryData.id))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
