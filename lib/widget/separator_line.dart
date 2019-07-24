import 'package:flutter/material.dart';

class SeparatorLine extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const SeparatorLine({
    this.height = 1,
    this.width = 1,
    this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

      },
    );
  }
}
