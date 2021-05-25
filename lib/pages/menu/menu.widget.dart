import 'package:flutter/material.dart';
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
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xffd70b0b),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: (Image.asset("images/logo.png")),
                  )
                ],
              ),
            ),
            ListTile(
              focusNode: myFocusNode,
              onTap: () {
                print("hello");
              },
              autofocus: true,
              leading: Icon(Icons.home,
                  color: myFocusNode.hasFocus ? Colors.red : Colors.grey),
              title: Text(
                'Accueil',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.laptop_mac_rounded,
                color: Colors.grey,
              ),
              title: Text(
                'Fidélité',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.fastfood,
                color: Colors.grey,
              ),
              title: Text(
                'Nos Produits',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.map_rounded,
                color: Colors.grey,
              ),
              title: Text(
                'Restaurant',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              title: Text(
                'Mon Compte',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: Colors.grey,
              ),
              title: Text(
                'A propos de Nous',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                color: Colors.grey,
              ),
              title: Text(
                'Région et langue',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
