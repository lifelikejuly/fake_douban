import 'package:flutter/material.dart';

class ResTopMenus extends StatefulWidget {
  final List<MenuIcon> icons;

  const ResTopMenus({this.icons}) : super();

  @override
  _ResTopMenusState createState() => _ResTopMenusState();
}

class _ResTopMenusState extends State<ResTopMenus> {
  @override
  void initState() {
    super.initState();
  }

  _createMenuIcon() {
    List<Widget> icons = List<Widget>();
    for (var icon in widget.icons) {
      icons.add(Expanded(
          child: Padding(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageIcon(AssetImage(icon.icon)),
            Text(icon.title)
          ],
        ),
      )));
    }
    return icons;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _createMenuIcon()));
  }
}

class MenuIcon {
  final String icon;
  final String title;

  const MenuIcon(this.title, this.icon);
}
