import 'package:flutter/material.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_comment.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_content.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_title.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_movie.dart';

class HomeDynamicCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeDynamicCardState();
  }
}

class HomeDynamicCardState extends State<HomeDynamicCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DynamicUserTitle(),
        DynamicUserContent(),
        DynamicUserMovie(),
        DynamicUserComment(),
        Divider()
      ],
    );
  }
}
