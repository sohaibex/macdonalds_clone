import 'package:flutter/material.dart';
import 'package:macdoclone/widgets/menu/menu.widget.dart';

class GlobalParametre {
  static final menus = [
    {
      'title': 'Home',
      'route': '/',
      'icon': Icon(Icons.home,
          color: myFocusNode.hasFocus ? Colors.red : Colors.grey),
    },
    {
      'title': 'Fidelite',
      'route': '/fidelite',
      'icon': Icon(Icons.laptop_mac_rounded, color: Colors.grey, ),
    },
    {
      'title': 'Produits',
      'route': '/Produits',
      'icon': Icon(
        Icons.fastfood,
        color: Colors.grey,
      ),
    },
    {
      'title': 'Restaurant',
      'route': '/Restaurant',
      'icon': Icon(
        Icons.map_rounded,
        color: Colors.grey,
      ),
    },
    {
      'title': 'Mon Compte',
      'route': '/compte',
      'icon': Icon(
        Icons.person,
        color: Colors.grey,
      ),
    },
    {
      'title': 'A propos de nous',
      'route': '/apropos',
      'icon': Icon(
        Icons.info_outline_rounded,
        color: Colors.grey,
      ),
    },
    {
      'title': 'Regions',
      'route': '/region',
      'icon': Icon(
        Icons.language,
        color: Colors.grey,
      ),
    },
  ];
}
