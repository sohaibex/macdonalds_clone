import 'package:flutter/material.dart';
class MyDrawerHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration:BoxDecoration(
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
    );
  }
}
