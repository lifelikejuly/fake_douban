import 'package:flutter/material.dart';

class AppTheme {
  getAppTheme() {
    return ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        backgroundColor: Colors.white,
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 15, color: Colors.black),
            headline2: TextStyle(fontSize: 14, color: Colors.grey),
            headline3: TextStyle(fontSize: 12, color: Colors.grey),
            bodyText1: TextStyle(fontSize: 20, color: Colors.black)));
  }
}
