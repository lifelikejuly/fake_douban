import 'package:flutter/material.dart';
import 'package:fake_douban/ui/mine/mine_top_user_view.dart';
import 'package:fake_douban/ui/mine/mine_menu_item.dart';
import 'package:fake_douban/ui/mine/mine_menu_null_item.dart';
import 'package:fake_douban/ui/mine/mine_book_res_view.dart';
import 'package:fake_douban/config/app_colors.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  Color _dynamicColor = Colors.white;
  String _title = "";


  getMineItemMenu() {
    List<Widget> menus = List<Widget>();
    menus.add(MineMenuNullItem());
    menus.add(MineItemMenu(
      "看电影",
      "res/icon/ic_comment.png",
      subTitle: "一键播放",
    ));
    menus.add(MineMenuNullItem());
    menus.add(MineItemMenu("我的发布", "res/icon/ic_me_compose.png"));
    menus.add(MineItemMenu("我的日记", "res/icon/ic_me_diary.png"));
    menus.add(MineItemMenu("我的关注", "res/icon/ic_me_follows.png"));
    menus.add(MineItemMenu("相册", "res/icon/ic_me_albums.png"));
    menus.add(MineItemMenu("豆列/收藏", "res/icon/ic_me_bookmarks.png"));
    menus.add(MineMenuNullItem());
    menus.add(MineItemMenu("订单", "res/icon/ic_me_orders.png"));
    menus.add(MineItemMenu("豆瓣阅读·我的书架", "res/icon/ic_me_ark.png"));
    menus.add(MineItemMenu("钱包", "res/icon/ic_me_wallet.png"));
    menus.add(MineMenuNullItem());
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (ScrollNotification scrollNotification) {
          setState(() {
            if (scrollNotification.context.size.height >
                scrollNotification.context.size.width) {
              if (scrollNotification.metrics.extentBefore > 80) {
                _dynamicColor = Colors.black;
                _title = "我的";
              } else if (scrollNotification.metrics.extentBefore <= 80) {
                _dynamicColor = Colors.white;
                _title = "";
              }
            }
          });
          return true;
        },
        child: CustomScrollView(
          slivers: <Widget>[
            MineTopView(_dynamicColor, _title),
            SliverToBoxAdapter(
              child: MineBookResView(),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: getMineItemMenu(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
