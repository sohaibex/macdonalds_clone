import 'package:flutter/material.dart';
import 'package:macdoclone/global/global.parametre.dart';

import 'drawer.header.dart';
import 'drawer.listitems.dart';
class menu extends StatefulWidget {
  const menu({Key key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}
FocusNode myFocusNode = new FocusNode();
class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
           MyDrawerHeader(),

           ...(GlobalParametre.menus.map((item) =>
          DrawerItemsWidget(item['title'], item['route'], item['icon'])
           )),

          ],
        ),
      ),
    );
  }
}
