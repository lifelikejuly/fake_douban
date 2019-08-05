import 'package:flutter/material.dart';
import 'package:fake_douban/ui/mine/mine_media_view.dart';

class MineBookResView extends StatefulWidget {
  @override
  _MineBookResViewState createState() => _MineBookResViewState();
}

class _MineBookResViewState extends State<MineBookResView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "我的书影音",
                  style: TextStyle(fontSize: 18),
                ),
              ),
//              ClipRRect(
//                borderRadius: BorderRadius.circular(4),
//                child: Container(
//                  child: Stack(
//                    alignment: Alignment.centerLeft,
//                    children: <Widget>[
//                      Positioned(
//                        left: 8,
//                        child: Text("书影音档案 / "),
//                      ),
//                      Positioned(
//                        left: 8,
//                        child: Text("小结"),
//                      )
//                    ],
//                  ),
//                ),
//              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 40,
//            padding: new EdgeInsets.fromLTRB(
//                MediaQuery.of(context).size.width / 4,
//                0.0,
//                MediaQuery.of(context).size.width / 4,
//                0.0),
                  child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.green,
                      indicatorSize: TabBarIndicatorSize.label,
                      onTap: (index) {
                        _scrollController.animateTo(
                            index *
                                MediaQuery.of(context).size.width.toDouble(),
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      tabs: [
                        Tab(
                          text: "影视",
                        ),
                        Tab(
                          text: "图书",
                        ),
                        Tab(
                          text: "音乐",
                        )
                      ]),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            height: 150,
            child: TabBarView(controller: _tabController, children: [
              MineMediaStack(),
              MineMediaStack(),
              MineMediaStack()
            ]),
          ),
        ],
      ),
    );
  }
}
