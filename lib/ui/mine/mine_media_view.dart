import 'package:flutter/material.dart';

class MineMediaStack extends StatefulWidget {
  @override
  _MineMediaStackState createState() => _MineMediaStackState();
}

class _MineMediaStackState extends State<MineMediaStack> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MediaView(),
        ),
        Expanded(
          child: MediaView(),
        ),
        Expanded(
          child: MediaView(),
        ),
      ],
    );
  }
}

class MediaView extends StatefulWidget {
  @override
  _MediaViewState createState() => _MediaViewState();
}

class _MediaViewState extends State<MediaView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 60,
                bottom: 10,
                child: Container(
                  width: 60 / 1.4,
                  height: 60,
                  child: Image.network(
                      "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2554370800.webp",
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 35,
                bottom: 10,
                child: Container(
                  width: 80 / 1.4,
                  height: 80,
                  child: new Image.network(
                      "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553992741.webp",
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  width: 100 / 1.4,
                  height: 100,
                  child: new Image.network(
                      "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2554324453.webp",
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
        Text("想看")
      ],
    );
  }
}
