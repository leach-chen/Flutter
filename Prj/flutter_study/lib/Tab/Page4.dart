import 'package:flutter/material.dart';

class Page4 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page4State();
  }

}

class Page4State extends State<Page4>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: new Text("Page4"),
      ),
    );
  }

}