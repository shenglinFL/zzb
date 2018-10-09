import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

class SecondView extends StatefulWidget {
  @override
  _SecondViewState createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {

  var _appBar = new CupertinoNavigationBar(
    middle: Text(
      "List",
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.brown,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      backgroundColor: Colors.lightGreen,
    );
  }
}
