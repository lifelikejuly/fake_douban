import 'package:flutter/material.dart';

class SearchToolBar extends StatefulWidget {
  @override
  _SearchToolBarState createState() => _SearchToolBarState();
}

class _SearchToolBarState extends State<SearchToolBar> {
  back() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      height: kToolbarHeight,
      alignment: Alignment.center,
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Expanded(
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: "你抓拍到的正在别人的人",
                          border: InputBorder.none),
                      autofocus: true,
                    ),
                  ),
                  Icon(
                    Icons.code,
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: back,
              child: Text(
                "取消",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ]),
    );
  }
}
