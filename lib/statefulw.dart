import 'package:flutter/material.dart';

class MyStatefulScreen extends StatefulWidget {
  const MyStatefulScreen({super.key});

  @override
  State<MyStatefulScreen> createState() => _MyStatefulSScreenState();
}

class MyStatefulScreenState {}

class _MyStatefulScreenState {}

class _MyStatefulSScreenState extends State<MyStatefulScreen> {
  List<String> names = ['Elon', "Bill", "mark"];
  int i = 0;
  MaterialColor color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        backgroundColor: color,
        onPressed: () {
          setState(() {
             color = Colors.purple;
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My name is ${names[i]}"),
            ElevatedButton(
                onPressed: () {
                  if (i < names.length - 1) {
                    setState(() {
                      i++;
                    });
                  }
                },
                child: Text('Next')),
            ElevatedButton(
                onPressed: () {
                  if (i != 0) {
                    setState(() {
                      i--;
                    });
                  }
                },
                child: Text('Gp back')),
          ],
        ),
      ),
    );
  }
}
