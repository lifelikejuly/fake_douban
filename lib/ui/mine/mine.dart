import 'package:flutter/material.dart';
import 'package:fake_douban/ui/mine/mine_top_user_view.dart';
import 'package:fake_douban/ui/mine/mine_menu_item.dart';
import 'package:fake_douban/ui/mine/mine_menu_null_item.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  List<Widget> mineWidgets = List<Widget>();

  @override
  void initState() {
    super.initState();
    mineWidgets.add(MineTopView());
//    mineWidgets.add(ListTile(
//      title: Text("ssss"),
//      leading: ImageIcon(AssetImage("res/icon/ic_comment.png")),
//      trailing: Icon(Icons.arrow_forward_ios),
//    ));
    mineWidgets.add(Container(
      height: 200,
      child: Center(
        child: Text("Deving"),
      ),
    ));
    mineWidgets.add(MineMenuNullItem());
    mineWidgets.add(MineItemMenu(
      "看电影",
      "res/icon/ic_comment.png",
      subTitle: "一键播放",
    ));
    mineWidgets.add(MineMenuNullItem());
    mineWidgets.add(MineItemMenu("我的发布", "res/icon/ic_me_compose.png"));
    mineWidgets.add(MineItemMenu("我的日记", "res/icon/ic_me_diary.png"));
    mineWidgets.add(MineItemMenu("我的关注", "res/icon/ic_me_follows.png"));
    mineWidgets.add(MineItemMenu("相册", "res/icon/ic_me_albums.png"));
    mineWidgets.add(MineItemMenu("豆列/收藏", "res/icon/ic_me_bookmarks.png"));
    mineWidgets.add(MineMenuNullItem());
    mineWidgets.add(MineItemMenu("订单", "res/icon/ic_me_orders.png"));
    mineWidgets.add(MineItemMenu("豆瓣阅读·我的书架", "res/icon/ic_me_ark.png"));
    mineWidgets.add(MineItemMenu("钱包", "res/icon/ic_me_wallet.png"));
//    mineWidgets.add(MineItemMenu("购物车", "res/icon/ic_me_shopping_cart.png"));
    mineWidgets.add(MineMenuNullItem());
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 16),
      itemBuilder: (context, position) {
        return mineWidgets[position];
      },
      itemCount: mineWidgets.length,
    );
  }
}
