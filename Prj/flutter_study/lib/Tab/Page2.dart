import 'package:flutter/material.dart';

class Page2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page2State();
  }

}

class Page2State extends State<Page2>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.deepPurple,
        alignment: Alignment.center,
        child: new Text("Page2"),
      ),
    );
  }

}