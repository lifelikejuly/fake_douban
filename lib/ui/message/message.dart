import 'package:admob_flutter/admob_flutter.dart';
import 'package:fake_douban/config/app_ad.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Container(
          width: 150,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "提醒"),
              Tab(text: "私信"),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[NoticeList(), TestList()],
      ),
    );
  }
}

class NoticeList extends StatefulWidget {
  @override
  _NoticeListState createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        if (position / 10 == 0)
          return AdmobBanner(
            adUnitId: getBannerAdUnitId(),
            adSize: AdmobBannerSize.BANNER,
            onBannerCreated: (AdmobBannerController controller) {},
          );
        return Center(
          child: Text("$position"),
        );
      },
      itemCount: 300,
    );
  }
}

class TestList extends StatefulWidget {
  @override
  _TestListState createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 100,
          child: ListView.builder(
            itemBuilder: (context, position) {
              return Center(
                child: Text("$position"),
              );
            },
            itemCount: 100,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Text("lll"),
        AdmobBanner(
          adUnitId: getBannerAdUnitId(),
          adSize: AdmobBannerSize.BANNER,
          onBannerCreated: (AdmobBannerController controller) {},
        ),
        Text("lll"),
        Text("lll"),
        AdmobBanner(
          adUnitId: getBannerAdUnitId(),
          adSize: AdmobBannerSize.BANNER,
          onBannerCreated: (AdmobBannerController controller) {},
        ),
        Text("lll"),
        AdmobBanner(
          adUnitId: getBannerAdUnitId(),
          adSize: AdmobBannerSize.BANNER,
          onBannerCreated: (AdmobBannerController controller) {},
        ),
        Text("lll"),
        Text("lll"),
        AdmobBanner(
          adUnitId: getBannerAdUnitId(),
          adSize: AdmobBannerSize.BANNER,
          onBannerCreated: (AdmobBannerController controller) {},
        ),
      ],
    );
  }
}
