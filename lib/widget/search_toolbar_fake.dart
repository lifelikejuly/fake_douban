import 'package:flutter/material.dart';
import 'package:fake_douban/ui/search/search.dart';

class SearchToolFakeBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchToolFakeBarState();
  }
}

class SearchToolFakeBarState extends State<SearchToolFakeBar> {
  search() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        height: kToolbarHeight,
        alignment: Alignment.center,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                          child: GestureDetector(
                            child: Text("你抓拍到的正在别人的人"),
                            onTap: search,
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
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              )
            ]));
  }
}
