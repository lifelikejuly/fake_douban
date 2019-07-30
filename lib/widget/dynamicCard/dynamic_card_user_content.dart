import 'package:flutter/material.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class DynamicUserContent extends StatefulWidget {

  final DynamicBeanEntity dynamicBeanEntity;

  const DynamicUserContent(this.dynamicBeanEntity):super();

  @override
  _DynamicUserContentState createState() => _DynamicUserContentState();
}

class _DynamicUserContentState extends State<DynamicUserContent> {

  DynamicBeanEntity dynamicBeanEntity;

  @override
  void initState() {
    super.initState();
    this.dynamicBeanEntity = widget.dynamicBeanEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5,bottom:5,left: 15,right: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        dynamicBeanEntity.content,
        textAlign: TextAlign.left,
      ),
    );
  }
}
