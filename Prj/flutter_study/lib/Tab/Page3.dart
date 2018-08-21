import 'package:flutter/material.dart';

class Page3 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page3State();
  }

}

class Page3State extends State<Page3>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: new Text("Page3"),
      ),
    );
  }

}