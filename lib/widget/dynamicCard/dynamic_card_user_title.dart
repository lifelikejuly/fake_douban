import 'package:flutter/material.dart';
import 'package:fake_douban/widget/text12.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class DynamicUserTitle extends StatefulWidget {

  final DynamicBeanEntity dynamicBeanEntity;

  const DynamicUserTitle(this.dynamicBeanEntity);

  @override
  _DynamicUserTitleState createState() => _DynamicUserTitleState();
}

class _DynamicUserTitleState extends State<DynamicUserTitle> {

  DynamicBeanEntity dynamicBeanEntity;

  @override
  void initState() {
    super.initState();
    dynamicBeanEntity = widget.dynamicBeanEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image.asset('res/img/ic_douban_avatar.jpg',scale: 1.3,),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(dynamicBeanEntity.user),
                  Text12(
                    dynamicBeanEntity.tip,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text12(
              dynamicBeanEntity.date,
              color: Colors.grey,
            ),
          ),
          ImageIcon(
            AssetImage("res/icon/ic_more.png"),
          )
        ],
      ),
    );
  }
}
