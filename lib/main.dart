import 'package:flutter/material.dart';
import 'package:fluttertutorial/first_screeen.dart';
import 'package:fluttertutorial/statefulw.dart';
import './home.dart';
import '.package:fluttertutorial/Contact.dart';

void main() {
  var fontWeight;
  runApp(MaterialApp(
    title: 'My First App',
    // home: FirstScreeen(),
    routes: {
      '/': (context) => FirstScreeen(),
      '/contact': (context)=>Contact(),
      // '/secondScreen':(context)=>SecondScreen(),
    },
  ));
}
