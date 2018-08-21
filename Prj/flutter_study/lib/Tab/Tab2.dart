import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/Tab/Page1.dart';
import 'package:flutter_study/Tab/Page2.dart';
import 'package:flutter_study/Tab/Page3.dart';
import 'package:flutter_study/Tab/Page4.dart';

class Tab2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Tab2State();
  }
}

class Tab2State extends State<Tab2> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Tab1'),
    new Tab(text: 'Tab2'),
    new Tab(text: 'Tab3'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('顶部tab切换'),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.directions_bike),
            ),
            new Tab(
              icon: new Icon(Icons.directions_boat),
            ),
            new Tab(
              icon: new Icon(Icons.directions_bus),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Page1(),
          new Page2(),
          new Page3(),
        ],
      ),
        bottomNavigationBar: new Material(    //为了适配主题风格，包一层Material实现风格套用
          color: Colors.deepOrange,   //底部导航栏主题颜色
          child: new TabBar(        //TabBar导航标签，底部导航放到Scaffold的bottomNavigationBar中
            controller: _tabController,      //配置控制器
            tabs: myTabs,
            indicatorColor: Colors.white, //tab标签的下划线颜色
          ),
        )
    );
  }
}
