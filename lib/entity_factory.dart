import 'package:fake_douban/model/dynamic_bean_entity.dart';
import 'package:fake_douban/model/group_message_entity.dart';
import 'package:fake_douban/model/group_find_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "DynamicBeanList") {
      return DynamicBeanList.fromJson(json) as T;
    } else if (T.toString() == "GroupMessageEntity") {
      return GroupMessageEntity.fromJson(json) as T;
    } else if (T.toString() == "GroupFindList") {
      return GroupFindList.fromJson(json) as T;
    } else {
      return null;
    }
  }
}