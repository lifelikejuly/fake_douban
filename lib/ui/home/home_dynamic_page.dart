import 'package:flutter/material.dart';
import 'package:fake_douban/widget/dynamicCard/home_dynamic_item_card.dart';

class HomeDynamicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeDynamicPageState();
  }
}

class HomeDynamicPageState extends State<HomeDynamicPage> {

  Future<Null> toRefresh() async{}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              itemBuilder: (context, position) {
                return HomeDynamicCard();
              },
              itemCount: 10,
            ),
            onRefresh: toRefresh),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.mode_edit,
            color: Colors.white,
          ),
          backgroundColor: Colors.grey,
        ));
  }
}
