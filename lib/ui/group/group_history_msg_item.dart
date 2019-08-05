import 'package:flutter/material.dart';
import 'package:fake_douban/config/app_colors.dart';
import 'package:fake_douban/model/group_message_entity.dart';

class GroupHistoryMsgItem extends StatefulWidget {
  final GroupMessageEntity groupMessageEntity;

  const GroupHistoryMsgItem(this.groupMessageEntity) : super();

  @override
  _GroupHistoryMsgItemState createState() => _GroupHistoryMsgItemState();
}

class _GroupHistoryMsgItemState extends State<GroupHistoryMsgItem> {
  GroupMessageEntity groupMessageEntity;

  @override
  void initState() {
    super.initState();
    groupMessageEntity = widget.groupMessageEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15, top: 10, bottom: 10),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "res/icon/ic_group_comment.png",
                  width: 20,
                ),
                Text(groupMessageEntity.msg.toString())
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  groupMessageEntity.title,
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "res/icon/ic_group_comment.png",
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        groupMessageEntity.groupName,
                        style: TextStyle(fontSize: 14, color: AppColors.grey),
                      ),
                    ),
                    Text(
                      groupMessageEntity.date,
                      style: TextStyle(fontSize: 12, color: AppColors.appGrey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
