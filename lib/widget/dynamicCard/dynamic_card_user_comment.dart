import 'package:flutter/material.dart';
import 'package:fake_douban/widget/icon_num.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class DynamicUserComment extends StatefulWidget {
  final List<DynamicBeanCommants> dynamicUserComment;
  final int vote;
  final int reply;
  final int forward;

  const DynamicUserComment(
      this.dynamicUserComment, this.vote, this.reply, this.forward)
      : super();

  @override
  _DynamicUserCommentState createState() => _DynamicUserCommentState();
}

class _DynamicUserCommentState extends State<DynamicUserComment> {
  List<DynamicBeanCommants> dynamicBeanCommants;
  List<Widget> comments = List<Widget>();

  List<Widget> getComments() {
    List<Widget> commentsComments = List<Widget>();
    dynamicBeanCommants.forEach((comment) {
      commentsComments.add(
        Text(
          comment.name + ":" + comment.msg,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
    });
    return commentsComments;
  }

  @override
  void initState() {
    super.initState();
    dynamicBeanCommants = widget.dynamicUserComment;
    comments = getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                  width: 1,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: comments,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: NumberIcon(
                    icon: AssetImage("res/icon/ic_vote.png"),
                    color: Colors.grey,
                    label: widget.vote.toString(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: NumberIcon(
                    icon: AssetImage("res/icon/ic_comment.png"),
                    color: Colors.grey,
                    label: widget.reply.toString(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: NumberIcon(
                    icon: AssetImage("res/icon/ic_change_round.png"),
                    color: Colors.grey,
                    label: widget.forward.toString(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
