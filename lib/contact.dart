import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

String name = 'Guest';

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    print("Screen Building");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
              print("setState is Called");
            },
          ),
          Text("Hello $name"),
        ],
      ),
    );
  }
}
