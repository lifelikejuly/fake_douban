import 'package:flutter/material.dart';
import 'package:fake_douban/ui/res/res_row_top_menu.dart';


class ResMoviePage extends StatefulWidget {
  @override
  _ResMoviePageState createState() => _ResMoviePageState();
}

class _ResMoviePageState extends State<ResMoviePage> {

  /**
   * 找电影 豆瓣榜单 豆瓣裁 豆瓣片单
   */

  List<MenuIcon> icons = List<MenuIcon>();

  @override
  void initState() {
    super.initState();
    icons.add(MenuIcon("找电影", "res/icon/ic_me_ark.png"));
    icons.add(MenuIcon("豆瓣榜单", "res/icon/ic_me_ark.png"));
    icons.add(MenuIcon("豆瓣猜", "res/icon/ic_me_ark.png"));
    icons.add(MenuIcon("豆瓣片单", "res/icon/ic_me_ark.png"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ResTopMenus(icons: icons,)
      ],
    );
  }


}
