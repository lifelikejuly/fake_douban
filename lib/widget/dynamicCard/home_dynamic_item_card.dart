import 'package:flutter/material.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_comment.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_content.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_title.dart';
import 'package:fake_douban/widget/dynamicCard/dynamic_card_user_movie.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class HomeDynamicCard extends StatefulWidget {

  final DynamicBeanEntity dynamicBeanEntity;

  const HomeDynamicCard(this.dynamicBeanEntity) :super();

  @override
  State<StatefulWidget> createState() {
    return HomeDynamicCardState();
  }
}

class HomeDynamicCardState extends State<HomeDynamicCard> {

  DynamicBeanEntity dynamicBean;

  @override
  Widget build(BuildContext context) {
    dynamicBean = widget.dynamicBeanEntity;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DynamicUserTitle(dynamicBean),
        DynamicUserContent(dynamicBean),
        DynamicUserMovie(dynamicBean.movie),
        DynamicUserComment(
            dynamicBean.comments,
            dynamicBean.vote,
            dynamicBean.reply,
            dynamicBean.forward),
        Divider()
      ],
    );
  }
}
