import 'package:flutter/material.dart';
import 'package:fake_douban/model/group_find_entity.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';

class GroupFindOrganizationList extends StatefulWidget {
  @override
  _GroupFindOrganizationListState createState() =>
      _GroupFindOrganizationListState();
}

class _GroupFindOrganizationListState extends State<GroupFindOrganizationList> {
  List<GroupFindEntity> groupEntity = List<GroupFindEntity>();

  Future<String> _loadGroupsJson() async {
    return await rootBundle.loadString('res/mock/mock_group_find.json');
  }

  decodeGroupsList() async {
    String groupsJson = await _loadGroupsJson();
    List<dynamic> list = json.decode(groupsJson);
    final models = GroupFindList.fromJson(list);
    setState(() {
      groupEntity = models.groupFindList;
    });
  }

  @override
  void initState() {
    super.initState();
    decodeGroupsList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return GroupFindOrganizationView(groupEntity[position]);
        },
        itemCount: groupEntity.length,
      ),
    );
  }
}

class GroupFindOrganizationView extends StatefulWidget {
  final GroupFindEntity findEntity;

  const GroupFindOrganizationView(this.findEntity) : super();

  @override
  _GroupFindOrganizationViewState createState() =>
      _GroupFindOrganizationViewState();
}

class _GroupFindOrganizationViewState extends State<GroupFindOrganizationView> {
  GroupFindEntity findEntity;

  List<GroupItemView> groupItemViews = List<GroupItemView>();

  @override
  void initState() {
    super.initState();
    findEntity = widget.findEntity;
//    List<Widget> groups = List<Widget>();
//    findEntity.groups.forEach((group) {
//      groups.add(GroupItemView(group));
//    });
//    setState(() {
//      groupItemViews = groups;
//    });
  }

  List<Widget> getGroups() {
    List<Widget> groups = List<Widget>();
    findEntity.groups.forEach((group) {
      groups.add(GroupItemView(group));
    });
    return groups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(color: Colors.grey, width: 0.5), // 边色与边宽度
        shape: BoxShape.rectangle, // 默认值也是矩形
        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
      ),
      margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GroupTypeView(
            findEntity.groupType,
          ),
          ...getGroups(),
        ],
      ),
    );
  }
}

class GroupTypeView extends StatelessWidget {
  final String title;

  const GroupTypeView(this.title) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.green, // 底色
          shape: BoxShape.rectangle, // 默认值也是矩形
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20))), // 圆角度
      width: 270,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                child: Text("换一批"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GroupItemView extends StatefulWidget {
  final GroupFindGroup findGroup;

  const GroupItemView(this.findGroup) : super();

  @override
  _GroupItemViewState createState() => _GroupItemViewState();
}

class _GroupItemViewState extends State<GroupItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      width: 270,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("icon"),
//          Container(
//            child: Text(widget.findGroup.groupName),
//          ),
          Expanded(
            flex: 1,
            child: Text(widget.findGroup.groupName),
          ),
//          Expanded(
//            flex: 1,
//            child: Text(widget.findGroup.groupName),
//          ),
//            Text(widget.findGroup.groupName),
          Text("${widget.findGroup.groupMember}成员")
        ],
      ),
    );
  }
}
