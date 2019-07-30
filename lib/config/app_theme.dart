import 'package:flutter/material.dart';

class AppTheme {
  getAppTheme() {
    return ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        backgroundColor: Colors.white,
        textTheme: TextTheme(
            display1: TextStyle(fontSize: 15, color: Colors.black),
            display2: TextStyle(fontSize: 14, color: Colors.grey),
            display3: TextStyle(fontSize: 12, color: Colors.grey),
            title: TextStyle(fontSize: 20, color: Colors.black)));
  }
}
