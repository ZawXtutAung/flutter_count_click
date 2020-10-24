import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Center(child: MyBody()),
          ),
        ),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  MyBody({Key key}) : super(key: key);
  @override
  _mBodyState createState() => _mBodyState();
}

class _mBodyState extends State<MyBody> {
  void click() {
    setState(() {
      count++;
    });
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(40),
          
          decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.all(20),
          child: Text(
            '$count',
            style: TextStyle(fontSize: 30, color: Colors.blueGrey),
          ),
        ),
        RaisedButton(
          color: Colors.blueGrey,
          child: Text("ClickMe"),
          onPressed: click,
        )
      ],
    );
  }
}
