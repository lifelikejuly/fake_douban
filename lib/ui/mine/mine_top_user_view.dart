import 'package:flutter/material.dart';
import 'package:fake_douban/ui/message/message.dart';

class MineTopView extends StatefulWidget {
  final Color _dynamicColor;
  final String _title;

  const MineTopView(this._dynamicColor, this._title) : super();

  @override
  _MineTopViewState createState() => _MineTopViewState();
}

class _MineTopViewState extends State<MineTopView> {
  messageCenter() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MessagePage()));
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      pinned: true,
      leading: Image.asset(
        "res/icon/ic_settings.png",
        color: widget._dynamicColor,
        scale: 3,
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        widget._title,
        style: TextStyle(color: widget._dynamicColor),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding:
              new EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("res/icon/bg_mine_login.png"),
                  fit: BoxFit.cover)),
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
      actions: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              child: ImageIcon(
                AssetImage("res/icon/ic_mail.png"),
                color: widget._dynamicColor,
              ),
              onTap: messageCenter,
            ),
          ),
        )
      ],
    );
  }
}
