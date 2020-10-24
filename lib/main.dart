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
      children: [
        Text(
          '$count'
        ),
        RaisedButton(
          child: Text("ClickMe"),
          onPressed: click,
        )
      ],
    );
  }
}
