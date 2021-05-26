import 'package:flutter/material.dart';
Widget card(Categorie c)
{
  return   Container(
    width: 150,
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(child: Image.asset(c.image,fit: BoxFit.contain,)),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child:  Text(c.titles,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),)
          ),
        ],
      ),
    ),
  );
}

List<Categorie> cat = const <Categorie>
[
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
  const Categorie(image:"images/burger.jpg",titles:'Cliquer ici pour collecter vos points de fidélité'),
];
class Categorie
{
  final String image,titles;
  const Categorie({this.image,this.titles});
}