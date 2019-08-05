class GroupFindList{
	List<GroupFindEntity> groupFindList;

	GroupFindList({this.groupFindList});

	factory GroupFindList.fromJson(List<dynamic> listJson) {

		List<GroupFindEntity> beanList =
		listJson.map((value) => GroupFindEntity.fromJson(value)).toList();

		return GroupFindList(groupFindList: beanList);
	}
}

class GroupFindEntity {
	String groupType;
	List<GroupFindGroup> groups;

	GroupFindEntity({this.groupType, this.groups});

	GroupFindEntity.fromJson(Map<String, dynamic> json) {
		groupType = json['groupType'];
		if (json['groups'] != null) {
			groups = new List<GroupFindGroup>();(json['groups'] as List).forEach((v) { groups.add(new GroupFindGroup.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['groupType'] = this.groupType;
		if (this.groups != null) {
      data['groups'] =  this.groups.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class GroupFindGroup {
	String groupName;
	int groupMember;
	String groupIcon;

	GroupFindGroup({this.groupName, this.groupMember, this.groupIcon});

	GroupFindGroup.fromJson(Map<String, dynamic> json) {
		groupName = json['groupName'];
		groupMember = json['groupMember'];
		groupIcon = json['groupIcon'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['groupName'] = this.groupName;
		data['groupMember'] = this.groupMember;
		data['groupIcon'] = this.groupIcon;
		return data;
	}
}
