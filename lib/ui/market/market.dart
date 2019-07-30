import 'package:flutter/material.dart';
import 'package:fake_douban/widget/app_h5.dart';

class MarketPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MarketPageState();
  }
}

class MarketPageState extends State<MarketPage> {
  Future<Null> toRefresh() async {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: new EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width / 4,
                    0.0,
                    MediaQuery.of(context).size.width / 4,
                    0.0),
                child: TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        text: "豆瓣豆品",
                      ),
                      Tab(
                        text: "豆瓣时间",
                      )
                    ]),
              ),
              preferredSize: Size.fromHeight(kToolbarHeight)),
          body: RefreshIndicator(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                AppWebView(
                  url: 'https://shiji.douban.com',
                ),
                AppWebView(
                  url: 'https://time.douban.com',
                )
              ],
            ),
            onRefresh: toRefresh,
          ),
        ),
      ),
    );
//  return AppWebView(url: 'https://time.douban.com',);
  }
}
