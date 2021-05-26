import 'package:flutter/material.dart';
class fidelite extends StatefulWidget {
  const fidelite({Key key}) : super(key: key);

  @override
  _fideliteState createState() => _fideliteState();
}

class _fideliteState extends State<fidelite> {
  @override
  Widget build(BuildContext context) {
    print("fidelite");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

                onPressed: (){
Navigator.pushNamed(context, "/");
                },
              child: Text("Navigate to Home"),
            )
          ],
        ),
      ),
    );
  }
}
