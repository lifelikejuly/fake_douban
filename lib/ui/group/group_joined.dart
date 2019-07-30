import 'package:flutter/material.dart';
import 'package:fake_douban/config/app_colors.dart';

class GroupJoinedView extends StatefulWidget {
  @override
  _GroupJoinedViewState createState() => _GroupJoinedViewState();
}

class _GroupJoinedViewState extends State<GroupJoinedView> {
  List<JoinGroupCard> joins = List<JoinGroupCard>();

  @override
  void initState() {
    super.initState();
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
    joins.add(JoinGroupCard());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15,top: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "我加入的",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Text("全部", style: TextStyle(fontSize: 14)),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, position) {
              return joins[position];
            },
            itemCount: joins.length,
          ),
        ),
        Divider()
      ],
    );
  }
}

//TODO listView 无法使用
class JoinGroupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            color: AppColors.appGreen,
          ),
          Text("小组")
        ],
      ),
    );
  }
}
