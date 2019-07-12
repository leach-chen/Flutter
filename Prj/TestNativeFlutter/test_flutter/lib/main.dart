import 'dart:ui';

import 'package:flutter/material.dart';

import 'UI/MyCenter/MyCenterImpl.dart';

void main() => runApp(selectWidget(window.defaultRouteName));



Widget selectWidget(String routeName) {
  switch (routeName) {
    case 'r1':
      return MyApp(); //这个是测试activity中添加flutter时用，
    case 'r2':
    default:
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text(
              '路由不存在！',
              style: TextStyle(color: Color(0xffff0000)),
            ),
          ),
        ),
      );
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyCenterImpl(),
    );
  }
}