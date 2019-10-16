import "package:flutter/material.dart";

import './app_screens/first_screen.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My flutter app',
      color: Colors.lightBlueAccent,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: FirstScreen(),
      ),
    );
  }
}
