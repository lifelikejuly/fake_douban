import 'package:flutter/material.dart';
import 'package:fake_douban/widget/text12.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class DynamicUserMovie extends StatefulWidget {

  final DynamicBeanMovie dynamicBeanMovie;

  const DynamicUserMovie(this.dynamicBeanMovie):super();

  @override
  _DynamicUserMovieState createState() => _DynamicUserMovieState();
}

class _DynamicUserMovieState extends State<DynamicUserMovie> {

  DynamicBeanMovie dynamicBeanMovie;

  @override
  void initState() {
    super.initState();
    dynamicBeanMovie = widget.dynamicBeanMovie;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("......"),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            color: Colors.black,
            height: 200,
            child: Card(
              color: Colors.black,
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
                          dynamicBeanMovie.name,
                          style: TextStyle(fontSize: 14),
                        ),
                        Text12(dynamicBeanMovie.play),
                        Text12(dynamicBeanMovie.key,
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
                        ImageIcon(
                          AssetImage("res/icon/ic_mark_todo.png"),
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
      color: Colors.grey[200],
    );
  }
}
