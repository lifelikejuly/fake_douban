import 'package:flutter/material.dart';

class NumberIcon extends StatelessWidget {
  final Color color;
  final Color textColor;
  final ImageProvider  icon;
  final String label;

  NumberIcon({Key key, this.icon, this.label,this.color,this.textColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        return new Container(
          height: 30,
          width: boxConstraints.maxWidth,
          child: new Stack(
            children: <Widget>[
              new Center(
                child: ImageIcon(icon, color: color),
              ),
              new Positioned(
                left: boxConstraints.maxWidth / 2 + 8,
                child: new Text(label,
                    style: new TextStyle(color: (textColor != null) ? textColor : Colors.grey, fontSize: 10.0)),
              )
            ],
          ),
        );
      },
    );
  }
}
