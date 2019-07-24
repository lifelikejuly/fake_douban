import 'package:flutter/material.dart';


class Text12 extends StatelessWidget {

  const Text12(this.data,{this.color}):super();

  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {


    return Text(
      data,
      style: TextStyle(
        fontSize: 12,
        color: color
      ),
    );
  }
}
