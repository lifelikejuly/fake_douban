import 'package:flutter/material.dart';
import 'package:fake_douban/widget/search_toolbar_fake.dart';
import 'package:fake_douban/ui/group/group_history_list.dart';
import 'package:fake_douban/ui/group/group_find_organization.dart';
import 'package:fake_douban/ui/group/group_joined.dart';
import 'package:fake_douban/ui/group/test.dart';
import 'package:fake_douban/ui/group/list.dart';

class GroupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GroupPageState();
  }
}

class GroupPageState extends State<GroupPage> {
  testClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }

  testListClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => List()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchToolFakeBar(defalut: false),
        Expanded(
          child: ListView(
            children: <Widget>[
              GroupJoinedView(),
              GroupHisotryList(),
            ],
          ),
        ),
      ],
    );
  }
}
