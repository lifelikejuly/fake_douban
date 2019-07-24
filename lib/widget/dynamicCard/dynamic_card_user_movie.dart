import 'package:flutter/material.dart';
import 'package:fake_douban/widget/text12.dart';

class DynamicUserMovie extends StatefulWidget {
  @override
  _DynamicUserMovieState createState() => _DynamicUserMovieState();
}

class _DynamicUserMovieState extends State<DynamicUserMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5,left: 15, right: 15,bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("《罗小黑战记》先行版"),
          Card(
            child: Container(
              color: Colors.black,
              height: 100,
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 5),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.network(
                        "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563624785.webp",
                        height: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "罗小黑战记",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text12("尚未上映"),
                        Text12("2019 / 中国大陆 / 动作 动画 奇幻 / MTJJ",
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 1,
                      height: 50,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.orange,
                        ),
                        Text("想看",
                            style:
                                TextStyle(fontSize: 14, color: Colors.orange))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      color: Colors.grey,
    );
  }
}
