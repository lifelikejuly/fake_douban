import 'package:flutter/material.dart';
import 'package:fake_douban/ui/group/group_history_msg_item.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:fake_douban/model/group_message_entity.dart';

class GroupHisotryList extends StatefulWidget {
  @override
  _GroupHisotryListState createState() => _GroupHisotryListState();
}

class _GroupHisotryListState extends State<GroupHisotryList> {
  List<Widget> groupWidgets = List<Widget>();
  List<GroupHistoryMsgItem> groupMsgs = List<GroupHistoryMsgItem>();

  Future<String> _loadGroupsJson() async {
    return await rootBundle.loadString('res/mock/mock_group_msg.json');
  }

  decodeGroupsList() async {
    List<GroupHistoryMsgItem> Msgs = List<GroupHistoryMsgItem>();
    String groupsJson = await _loadGroupsJson();
    List<dynamic> list = json.decode(groupsJson);
    final models = GroupMsgList.fromJson(list);
    models.groupMsgList
        .forEach((item) => { Msgs.add(GroupHistoryMsgItem(item))});
    setState(() {
      groupMsgs = Msgs;
    });
  }

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
    decodeGroupsList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...groupWidgets,...groupMsgs],
    );
  }
}
