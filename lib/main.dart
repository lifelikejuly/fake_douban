import 'package:flutter/material.dart';
import 'package:fake_douban/widget/home_bottom_nav.dart';
import 'package:fake_douban/ui/home/home.dart';
import 'package:fake_douban/ui/market/market.dart';
import 'package:fake_douban/ui/group/group.dart';
import 'package:fake_douban/ui/mine/mine.dart';
import 'package:fake_douban/ui/res/res.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  List<Widget> pages = List<Widget>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pages.add(HomePage());
    pages.add(ResPage());
    pages.add(GroupPage());
    pages.add(MarketPage());
    pages.add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Douban',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
        bottomNavigationBar: HomeBottomNav(),
      ),
    );
  }
}
