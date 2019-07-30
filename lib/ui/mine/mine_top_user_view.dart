import 'package:flutter/material.dart';

class MineTopView extends StatefulWidget {
  @override
  _MineTopViewState createState() => _MineTopViewState();
}

class _MineTopViewState extends State<MineTopView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( left: 15, right: 15),
      child: Column(
        children: <Widget>[
          AppBar(
            title: ImageIcon(
              AssetImage("res/icon/ic_settings.png"),
              color: Colors.white,
            ),
            actions: <Widget>[
              ImageIcon(
                AssetImage("res/icon/ic_mail.png"),
                color: Colors.white,
              )
            ],
          ),
//          Row(
//            children: <Widget>[
//              ImageIcon(
//                AssetImage("res/icon/ic_settings.png"),
//                color: Colors.white,
//              ),
//              Expanded(
//                child: Text(""),
//              ),
//              ImageIcon(
//                AssetImage("res/icon/ic_mail.png"),
//                color: Colors.white,
//              )
//            ],
//          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'res/img/ic_douban_avatar.jpg',
                    scale: 0.7,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "豆瓣",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "关注 10k 被关注 10k",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "个人主页",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("res/icon/bg_mine_login.png"),
              fit: BoxFit.cover)),
    );
  }
}
