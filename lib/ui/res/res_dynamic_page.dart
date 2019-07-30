import 'package:flutter/material.dart';
import 'package:fake_douban/ui/res/res_moive_page.dart';
import 'package:fake_douban/widget/app_h5.dart';

class ResDynamicPage extends StatefulWidget {
  @override
  _ResDynamicPageState createState() => _ResDynamicPageState();
}

class _ResDynamicPageState extends State<ResDynamicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: TabBar(
                labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.green,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "电影",
                  ),
                  Tab(
                    text: "电视",
                  ),
                  Tab(
                    text: "读书",
                  ),
                  Tab(
                    text: "音乐",
                  ),
                  Tab(
                    text: "同城",
                  )
                ]),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                AppWebView(url: "https://movie.douban.com",),
                AppWebView(url: "https://movie.douban.com/tv/",),
                AppWebView(url: "https://book.douban.com",),
                AppWebView(url: "https://music.douban.com",),
                AppWebView(url: "https://www.douban.com/location/hangzhou/",),
              ],
            ),
          )),
    );
  }
}
