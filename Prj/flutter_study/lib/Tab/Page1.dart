import 'package:flutter/material.dart';

class Page1 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page1State();
  }

}

class Page1State extends State<Page1>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        child: new Text("Page1"),
      ),
    );
  }

}