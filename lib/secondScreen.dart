import 'package:flutter/material.dart';
import 'package:fluttertutorial/contact.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // // Pop
              // Navigator.pop(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context)=>Contact()));
            },
            child: Text("Second Screen")),
      ),
    );
  }
}
//push and pushReplacement
