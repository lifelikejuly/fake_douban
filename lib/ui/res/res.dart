import 'package:flutter/material.dart';
import 'package:fake_douban/widget/search_toolbar_fake.dart';
import 'package:fake_douban/ui/res/res_dynamic_page.dart';

class ResPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ResPageState();
  }

}


class ResPageState extends State<ResPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          SearchToolFakeBar(defalut: false,),
          Expanded(
            child: ResDynamicPage(),
          )
        ],
      ),
    );
  }

}