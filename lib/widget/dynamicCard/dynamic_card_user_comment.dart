import 'package:flutter/material.dart';

class DynamicUserComment extends StatefulWidget {
  @override
  _DynamicUserCommentState createState() => _DynamicUserCommentState();
}

class _DynamicUserCommentState extends State<DynamicUserComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:5,bottom:5,left: 15, right: 15),
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
                  children: <Widget>[
                    Text("History:终于等到了，激动!!"),
                    Text("Embrace:嗷嗷嗷")
                  ],
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
                  child: Icon(Icons.offline_pin,color: Colors.grey,),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.message,color: Colors.grey,),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.repeat,color: Colors.grey,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
