import 'package:flutter/material.dart';

class DynamicUserContent extends StatefulWidget {
  @override
  _DynamicUserContentState createState() => _DynamicUserContentState();
}

class _DynamicUserContentState extends State<DynamicUserContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5,bottom:5,left: 15,right: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        "《罗小黑战记》定档，将于2019年09月12日上映。妖精一直和人类共同生活在这片土地上，而人类并不知道妖精的存在。小黑就是一只小猫妖，这是关于他的故事。",
        textAlign: TextAlign.left,
      ),
    );
  }
}
