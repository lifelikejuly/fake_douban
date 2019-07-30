import 'package:flutter/material.dart';
import 'package:fake_douban/ui/search/search.dart';
import 'package:fake_douban/config/app_config.dart';

class SearchToolFakeBar extends StatefulWidget {
  final bool defalut;

  const SearchToolFakeBar({this.defalut = true}) : super();

  @override
  State<StatefulWidget> createState() {
    return SearchToolFakeBarState();
  }
}

class SearchToolFakeBarState extends State<SearchToolFakeBar> {
  search() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SearchPage(
                defalut: widget.defalut,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: widget.defalut ? AppColors.appGreen : AppColors.appWhite,
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
                child: GestureDetector(
                  child: Text("你抓拍到的正在别人的人"),
                  onTap: search,
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
            child: ImageIcon(
              AssetImage("res/icon/ic_mail.png"),
              color: widget.defalut ? AppColors.appWhite : AppColors.grey,
            ),
          ),
        )
      ],
    );
  }
}
