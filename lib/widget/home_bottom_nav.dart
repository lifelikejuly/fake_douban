import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fake_douban/redux/app_state.dart';
import 'package:fake_douban/redux/app_redux.dart';

class HomeBottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeBottomNavState();
  }
}

class HomeBottomNavState extends State<HomeBottomNav> {

  TextStyle navItemTextStyle = TextStyle(
    color: Colors.grey
  );

  selectNav(index){
    StoreProvider.of<AppState>(context).dispatch(new PageDatAction(index));
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState,int>(
      converter: (store) => store.state.currentIndex,
      builder: (context,currentIndex){
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(title: Text("首页"), icon: ImageIcon(AssetImage("res/icon/ic_tab_home_normal.png"))),
            BottomNavigationBarItem(title: Text("书影音"), icon: ImageIcon(AssetImage("res/icon/ic_tab_subject_normal.png"))),
            BottomNavigationBarItem(title: Text("小组"), icon: ImageIcon(AssetImage("res/icon/ic_tab_group_normal.png"))),
            BottomNavigationBarItem(title: Text("市集"), icon: ImageIcon(AssetImage("res/icon/ic_tab_shiji_normal.png"))),
            BottomNavigationBarItem(
                title: Text("我的"), icon:ImageIcon(AssetImage("res/icon/ic_tab_profile_normal.png"))),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          currentIndex: currentIndex,
          onTap: selectNav
          ,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
