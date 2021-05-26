import 'package:flutter/material.dart';

import 'menu.widget.dart';
class DrawerItemsWidget extends StatelessWidget {
 final String title;
 String route;
 Icon icon;

 Function onNavigate;
   DrawerItemsWidget(this.title,this.route,this.icon);

  @override
  Widget build(BuildContext context) {

    return    ListTile(
      focusNode: myFocusNode,
      onTap: ()
      {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
      autofocus: true,
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );

  }
}
