import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String data = "Hello";
  bool flag = false;
  void _changeText() {
    flag = !flag;
    setState(() {
      if (flag) {
        data = "Hello";
      } else {
        data = "World";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am learning Flutter"),
          elevation: 1,
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(data),
                RaisedButton(
                  onPressed: _changeText,
                  child: Text("Click Button"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
