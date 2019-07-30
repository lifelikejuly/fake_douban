import 'package:flutter/material.dart';
import 'package:fake_douban/config/app_config.dart';

class SearchToolBar extends StatefulWidget {
  final bool defalut;

  const SearchToolBar({this.defalut = true}) : super();

  @override
  _SearchToolBarState createState() => _SearchToolBarState();
}

class _SearchToolBarState extends State<SearchToolBar> {
  back() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:
            widget.defalut ? AppColors.appGreen : AppColors.appWhite,
        title: Material(
          color: widget.defalut ? AppColors.appWhite : AppColors.appGrey,
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: <Widget>[
                ImageIcon(
                  AssetImage("res/icon/ic_search.png"),
                  color: AppColors.grey,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        hintText: "你抓拍到的正在别人的人",
                        border: InputBorder.none),
                    autofocus: true,
                  ),
                ),
                ImageIcon(
                  AssetImage("res/icon/ic_scan.png"),
                  color: AppColors.grey,
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: back,
                child: Text(
                  "取消",
                  style: TextStyle(
                    color: widget.defalut
                        ? AppColors.appWhite
                        : AppColors.appGreen,
                  ),
                ),
              ),
            ),
          )
        ]);
  }
}
