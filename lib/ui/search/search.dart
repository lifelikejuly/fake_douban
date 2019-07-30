import 'package:flutter/material.dart';
import 'package:fake_douban/widget/search_toolbar.dart';
import 'package:fake_douban/ui/search/search_holder_movie.dart';

class SearchPage extends StatefulWidget {
  final bool defalut;

  const SearchPage({this.defalut = true}) : super();

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<SearchMovieCard> _list = List<SearchMovieCard>();

  @override
  void initState() {
    super.initState();
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
    _list.add(SearchMovieCard("哪吒之魔童降世5", 8.7, "电影"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchToolBar(
              defalut: widget.defalut,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "热门书影音",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.start,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2,
                mainAxisSpacing: 30,
                padding: EdgeInsets.all(10),
                children: _list,
              ),
            ),
//            Expanded(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    "热门书影音",
//                    style: TextStyle(fontSize: 15),
//                    textAlign: TextAlign.start,
//                  )
//                ],
//              ),
//            )
          ],
        ),
      ),
    );
  }
}
