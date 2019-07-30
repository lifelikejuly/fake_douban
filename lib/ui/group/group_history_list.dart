import 'package:flutter/material.dart';
import 'package:fake_douban/ui/group/group_history_msg_item.dart';

class GroupHisotryList extends StatefulWidget {
  @override
  _GroupHisotryListState createState() => _GroupHisotryListState();
}

class _GroupHisotryListState extends State<GroupHisotryList> {
  List<Widget> groupWidgets = List<Widget>();

  @override
  void initState() {
    super.initState();
    Widget groupTop = Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "小组讨论",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Text(
            "我的讨论记录",
            style: TextStyle(fontSize: 14),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
    groupWidgets.add(groupTop);
    groupWidgets.add(Divider());
    groupWidgets.add(GroupHistoryMsgItem());
    groupWidgets.add(GroupHistoryMsgItem());
    groupWidgets.add(GroupHistoryMsgItem());
    groupWidgets.add(GroupHistoryMsgItem());
    groupWidgets.add(GroupHistoryMsgItem());
    groupWidgets.add(GroupHistoryMsgItem());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: groupWidgets,
    );
  }
}
