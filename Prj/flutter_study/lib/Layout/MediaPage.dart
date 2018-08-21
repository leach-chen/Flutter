import 'package:flutter/material.dart';

class MediaPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MediaPageState();
  }

}

class MediaPageState extends State<MediaPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Text("Media"),
      ),
    );
  }

}