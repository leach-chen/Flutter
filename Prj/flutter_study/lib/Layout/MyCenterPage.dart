import 'package:flutter/material.dart';

class MyCenterPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCenterPageState();
  }

}

class MyCenterPageState extends State<MyCenterPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Text("MyCenter"),
      ),
    );
  }

}