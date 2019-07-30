import 'package:flutter/material.dart';
import 'package:fake_douban/config/app_colors.dart';

class SearchMovieCard extends StatelessWidget {
  final String movieName;
  final double movieScore;
  final String movieType;

  const SearchMovieCard(this.movieName, this.movieScore, this.movieType)
      : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Image.network(
            "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563624785.webp",
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  movieName,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  movieScore.toString(),
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  movieType,
                  style: TextStyle(fontSize: 12, color: AppColors.appGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
