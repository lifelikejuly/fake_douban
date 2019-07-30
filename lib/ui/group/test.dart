import 'package:flutter/material.dart';

final List<String> images = [
  'images/wallpapers/wallpaper1.jpg',
  'images/wallpapers/wallpaper2.jpg',
  'images/wallpapers/wallpaper3.jpg',
];

final List<String> descriptions = [
  '不摇碧莲，干翻苍穹',
  '周五快到了，准备追更新',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
  '社会我宝姐，人美路子野',
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DisplayPage();
  }
}

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => new _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {

  @override
  Widget build(BuildContext context) {

    var decorationBox = DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomRight,
          end: FractionalOffset.topLeft,
          colors: [
            Color(0x00000000).withOpacity(0.9),
            Color(0xff000000).withOpacity(0.01),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        child: SizedBox.fromSize(
          size: Size.fromHeight(550.0),
          child: PageView.builder(
            controller: PageController(initialPage: 0,viewportFraction: 0.8),
            itemCount: descriptions.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 8.0,
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Text(descriptions[index]),
                      decorationBox,
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
