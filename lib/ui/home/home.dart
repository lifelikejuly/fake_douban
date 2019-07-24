import 'package:flutter/material.dart';
import 'package:fake_douban/widget/search_toolbar_fake.dart';
import 'package:fake_douban/ui/home/home_tab_nav.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          SearchToolFakeBar(),
          Expanded(
            child: HomeTabPage(),
          )
        ],
      ),
    );
  }
}
