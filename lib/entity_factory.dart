import 'package:fake_douban/model/dynamic_bean_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "DynamicBeanEntity") {
      return DynamicBeanEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}