class GroupMsgList {
  List<GroupMessageEntity> groupMsgList;

  GroupMsgList({this.groupMsgList});

  factory GroupMsgList.fromJson(List<dynamic> listJson) {
    List<GroupMessageEntity> beanList =
        listJson.map((value) => GroupMessageEntity.fromJson(value)).toList();

    return GroupMsgList(groupMsgList: beanList);
  }
}

class GroupMessageEntity {
  int msg;
  String date;
  String groupName;
  String title;

  GroupMessageEntity({this.msg, this.date, this.groupName, this.title});

  GroupMessageEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    date = json['date'];
    groupName = json['groupName'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['date'] = this.date;
    data['groupName'] = this.groupName;
    data['title'] = this.title;
    return data;
  }
}
