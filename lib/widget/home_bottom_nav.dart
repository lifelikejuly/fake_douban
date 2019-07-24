import 'package:flutter/material.dart';

class HomeBottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeBottomNavState();
  }
}

class HomeBottomNavState extends State<HomeBottomNav> {

  int _currentIndex = 0;
  TextStyle navItemTextStyle = TextStyle(
    color: Colors.grey
  );

  selectNav(index){
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text("书影音"), icon: Icon(Icons.book)),
        BottomNavigationBarItem(title: Text("小组"), icon: Icon(Icons.group)),
        BottomNavigationBarItem(title: Text("市集"), icon: Icon(Icons.star)),
        BottomNavigationBarItem(
            title: Text("我的"), icon: Icon(Icons.verified_user)),
      ],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.green,
      currentIndex: _currentIndex,
      onTap: selectNav
      ,
      type: BottomNavigationBarType.fixed,
    );
  }
}
