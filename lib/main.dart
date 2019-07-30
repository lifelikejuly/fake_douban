import 'package:flutter/material.dart';
import 'package:fake_douban/widget/home_bottom_nav.dart';
import 'package:fake_douban/ui/home/home.dart';
import 'package:fake_douban/ui/market/market.dart';
import 'package:fake_douban/ui/group/group.dart';
import 'package:fake_douban/ui/mine/mine.dart';
import 'package:fake_douban/ui/res/res.dart';
import 'package:fake_douban/config/app_theme.dart';
import 'package:fake_douban/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {

  final store = Store<AppState>(
    appReducer,
    initialState: AppState(
      currentIndex: 0
    )
  );

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    super.initState();
    pages.add(HomePage());
    pages.add(ResPage());
    pages.add(GroupPage());
    pages.add(MarketPage());
    pages.add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: widget.store,
      child: new StoreBuilder<AppState>(builder: (context,store){
        return MaterialApp(
          title: 'Fake Douban',
          theme: AppTheme().getAppTheme(),
          home: Scaffold(
            body: SafeArea(
              child: pages[widget.store.state.currentIndex],
            ),
            bottomNavigationBar: HomeBottomNav(),
          ),
        );
      }),
    );
  }
}
