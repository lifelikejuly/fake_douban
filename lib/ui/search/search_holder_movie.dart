import 'package:flutter/material.dart';
import 'package:fake_douban/config/app_colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
          Image.asset(
            "res/img/movie.webp",
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
                SmoothStarRating(
                    allowHalfRating: true,
                    starCount: 5,
                    rating: 3.9,
                    size: 10.0,
                    color: Colors.orange,
                    borderColor: Colors.grey,
                    spacing: 0.0),
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
