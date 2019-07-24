import 'package:flutter/material.dart';
import 'package:fake_douban/widget/text12.dart';

class DynamicUserTitle extends StatefulWidget {
  @override
  _DynamicUserTitleState createState() => _DynamicUserTitleState();
}

class _DynamicUserTitleState extends State<DynamicUserTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image.asset('res/img/ic_douban_avatar.jpg'),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("新片情报局"),
                  Text12("转发预告片",color: Colors.grey,),
                ],
              ),
            ),
          ),
          Text12("昨天",color: Colors.grey,),
          Icon(Icons.menu)
        ],
      ),
    );
  }
}
