import 'package:flutter/material.dart';

class MineItemMenu extends StatefulWidget {
  final String title;
  final String image;
  final String subTitle;

  const MineItemMenu(this.title, this.image, {this.subTitle}) : super();

  @override
  _MineItemMenuState createState() => _MineItemMenuState();
}

class _MineItemMenuState extends State<MineItemMenu> {
  @override
  Widget build(BuildContext context) {
    String value;
    if (widget.subTitle != null) {
      value = widget.subTitle;
    } else {
      value = "";
    }

    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Image.asset(widget.image,width: 25,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(widget.title),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ));
  }
}
