import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('settings'),
        ),
        body: Center(
          child: Container(
            child: Text('data'),
          ),
        ));
  }
}
