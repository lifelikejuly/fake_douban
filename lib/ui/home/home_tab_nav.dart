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

//  TabController _tabController;

  @override
  void dispose() {
    super.dispose();
//    _tabController.dispose();
  }

  @override
  void initState() {
    super.initState();
//    _tabController = TabController(length: 2, vsync: this);
    tabs.add(Tab(
      text: "动态",
    ));
    tabs.add(Tab(
      text: "推荐",
    ));
  }

  @override
  Widget build(BuildContext context) {
//    return Container(
//        child: DefaultTabController(
//      length: tabs.length,
//      child: Scaffold(
//        appBar: TabBar(
//            labelColor: Colors.green,
//            unselectedLabelColor: Colors.grey,
//            indicatorColor: Colors.green,
//            indicatorSize: TabBarIndicatorSize.label,
//            tabs: tabs),
//        body: TabBarView(
//          children: <Widget>[
//            new HomeDynamicPage(),
//            new HomeDynamicPage(),
//          ],
//        ),
//      ),
//    ));

    return Container(
        child: DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: new EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/4, 0.0, MediaQuery.of(context).size.width/4, 0.0),
              child:  TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: tabs),
            ),
            preferredSize: Size.fromHeight(kToolbarHeight)),
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
