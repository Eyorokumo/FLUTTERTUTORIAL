import 'package:flutter/material.dart';
import 'package:fluttertutorial/secondScreen.dart';
// import 'package:fluttertutorial/contact.dart';

class FirstScreeen extends StatelessWidget {
  const FirstScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //Push method
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Secondscreen()));

              //Push REplacement
              // Navigator .pushReplacement(context, MaterialPageRoute(builder:(context)=>Secondscreen()));

              //pushnamed method
              Navigator.pushNamed(context, '/Contact');
              //pushreplacement method
              //Navigator.pushRelacementNamed(context, '/contact);
              //
              //Navigator.pushNamed(context, '/contact');
            },
            child: Text("Go to Contact screen")),
      ),
    );
  }
}

//push and pushReplacement