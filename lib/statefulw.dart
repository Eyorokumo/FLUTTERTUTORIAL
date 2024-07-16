import 'package:flutter/material.dart';
import 'package:fluttertutorial/contact.dart';

class MyStatefulScreen extends StatefulWidget {
  String userName;

  MyStatefulScreen({Key? key, this.userName = "Alex Okon"}) : super(key: key);

  @override
  State<MyStatefulScreen> createState() => _MyStatefulSScreenState();
}

class MyStatefulScreenState {}

class _MyStatefulScreenState {}

class _MyStatefulSScreenState extends State<MyStatefulScreen> {
  List<String> names = ['Elon', "Bill", "mark"];
  int i = 0;
  MaterialColor color = Colors.amber;

  String? name;

  @override
  void initState() {
    super.initState();
    print("InIT STATE");
    this.name = widget.userName;
  }

  @override
  void didChangeDependencies() {
    print('DidChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyStatefulScreen oldWidget) {
    if (this.widget.userName != oldWidget.userName) {
      print('DIDUPDATECHANGED');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("DIspose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build Function");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget -$name"),
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
