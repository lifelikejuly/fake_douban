import 'package:flutter/material.dart';
import 'package:fake_douban/ui/home/home_dynamic_page.dart';

class HomeTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeTabState();
  }
}

class HomeTabState extends State<HomeTabPage>
    with SingleTickerProviderStateMixin {
  List<Tab> tabs = List<Tab>();
  Widget controller;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabs.add(Tab(
      text: "动态",
    ));
    tabs.add(Tab(
      text: "推荐",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            tabs: tabs),
        body: TabBarView(
          children: <Widget>[
            new HomeDynamicPage(),
            new HomeDynamicPage(),
          ],
        ),
      ),
    ));
  }
}
