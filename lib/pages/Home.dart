import 'package:flutter/material.dart';

import 'card.widget.dart';
class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView
        (
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:20),
          Image.asset('images/macdo.jpeg',fit: BoxFit.cover,),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('!Offre rien que pour vous! 😍 😋',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          Container(
            height: 550,
            child: GridView.count(
                crossAxisCount: 2,
            children: List.generate(cat.length, (index) => card(cat[index]))

            ),
          )
        ],

      ),
      ),


    );
  }

}

