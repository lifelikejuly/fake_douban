import 'package:admob_flutter/admob_flutter.dart';
import 'package:fake_douban/config/app_ad.dart';
import 'package:flutter/material.dart';
import 'package:fake_douban/widget/dynamicCard/home_dynamic_item_card.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:fake_douban/model/dynamic_bean_entity.dart';

class HomeDynamicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeDynamicPageState();
  }
}

class HomeDynamicPageState extends State<HomeDynamicPage> {
  Future<Null> toRefresh() async {}

  Future<String> _loadDynamicJson() async {
    return await rootBundle.loadString('res/mock/mock_dynamic.json');
  }

  List<DynamicBeanEntity> dynamics = List<DynamicBeanEntity>();

  decodeDynamicList() async {
    String dynamicJson = await _loadDynamicJson();
    List<dynamic> list = json.decode(dynamicJson);
    final models = DynamicBeanList.fromJson(list);
    models.dynamicBeanList.forEach((dynamic) => print(dynamic.content));
    setState(() {
      dynamics = models.dynamicBeanList;
    });
  }

  @override
  void initState() {
    super.initState();
    decodeDynamicList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              itemBuilder: (context, position) {
                if(position == 0 || position == dynamics.length + 1){
                  return AdmobBanner(
                    adUnitId: getBannerAdUnitId(),
                    adSize: AdmobBannerSize.BANNER,
                    onBannerCreated:
                        (AdmobBannerController controller) {
                    },
                  );
                }else{
                  return HomeDynamicCard(dynamics[position - 1]);
                }
              },
              itemCount: dynamics.length + 2,
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
