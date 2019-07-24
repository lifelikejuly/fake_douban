import 'package:flutter/material.dart';
import 'package:fake_douban/widget/search_toolbar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchToolBar(),
            Expanded(
              child: Text("取消"),
            )
          ],
        ),
      ),
    );
  }
}
