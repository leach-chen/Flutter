import 'package:flutter/material.dart';

class DevicePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DevicePageState();
  }

}

class DevicePageState extends State<DevicePage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Text("Device"),
      ),
    );
  }

}