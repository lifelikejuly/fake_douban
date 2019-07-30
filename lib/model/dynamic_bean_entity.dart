class DynamicBeanList{
	List<DynamicBeanEntity> dynamicBeanList;

	DynamicBeanList({this.dynamicBeanList});

	factory DynamicBeanList.fromJson(List<dynamic> listJson) {

		List<DynamicBeanEntity> beanList =
		listJson.map((value) => DynamicBeanEntity.fromJson(value)).toList();

		return DynamicBeanList(dynamicBeanList: beanList);
	}
}

class DynamicBeanEntity {
	String date;
	List<DynamicBeanCommants> comments;
	DynamicBeanMovie movie;
	int forward;
	String tip;
	String avatar;
	int reply;
	String user;
	int vote;
	String content;

	DynamicBeanEntity({this.date, this.comments, this.movie, this.forward, this.tip, this.avatar, this.reply, this.user, this.vote, this.content});

	DynamicBeanEntity.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		if (json['comments'] != null) {
			comments = new List<DynamicBeanCommants>();(json['comments'] as List).forEach((v) { comments.add(new DynamicBeanCommants.fromJson(v)); });
		}
		movie = json['movie'] != null ? new DynamicBeanMovie.fromJson(json['movie']) : null;
		forward = json['forward'];
		tip = json['tip'];
		avatar = json['avatar'];
		reply = json['reply'];
		user = json['user'];
		vote = json['vote'];
		content = json['content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		if (this.comments != null) {
      data['comments'] =  this.comments.map((v) => v.toJson()).toList();
    }
		if (this.movie != null) {
      data['movie'] = this.movie.toJson();
    }
		data['forward'] = this.forward;
		data['tip'] = this.tip;
		data['avatar'] = this.avatar;
		data['reply'] = this.reply;
		data['user'] = this.user;
		data['vote'] = this.vote;
		data['content'] = this.content;
		return data;
	}
}

class DynamicBeanCommants {
	String msg;
	String name;

	DynamicBeanCommants({this.msg, this.name});

	DynamicBeanCommants.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['name'] = this.name;
		return data;
	}
}

class DynamicBeanMovie {
	String play;
	String name;
	String poster;
	String key;

	DynamicBeanMovie({this.play, this.name, this.poster, this.key});

	DynamicBeanMovie.fromJson(Map<String, dynamic> json) {
		play = json['play'];
		name = json['name'];
		poster = json['poster'];
		key = json['key'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['play'] = this.play;
		data['name'] = this.name;
		data['poster'] = this.poster;
		data['key'] = this.key;
		return data;
	}
}
