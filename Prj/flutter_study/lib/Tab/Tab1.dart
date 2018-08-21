import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/Tab/Page1.dart';
import 'package:flutter_study/Tab/Page2.dart';
import 'package:flutter_study/Tab/Page3.dart';
import 'package:flutter_study/Tab/Page4.dart';

class Tab1 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Tab1State();
  }

}

class Tab1State extends State<Tab1>
{
  var tabImages;
  var tabTitle;
  var _body;
  int _tabIndex = 0;
  final tabTextStyleNormal = new TextStyle(color: const Color(0xff969696));
  final tabTextStyleSelected = new TextStyle(color: const Color(0xff63ca6c));

  void initData() {
    if (tabImages == null) {
      tabImages = [
        [
          _getTabIconImage("images/common_tab_album_nor.png"),
          _getTabIconImage("images/common_tab_album_press.png"),
        ],
        [
          _getTabIconImage("images/common_tab_home_nor.png"),
          _getTabIconImage("images/common_tab_home_press.png"),
        ],
        [
          _getTabIconImage("images/common_tab_media_nor.png"),
          _getTabIconImage("images/common_tab_media_press.png"),
        ],
        [
          _getTabIconImage("images/common_tab_user_nor.png"),
          _getTabIconImage("images/common_tab_user_press.png"),
        ],
      ];
    }

    if (tabTitle == null) {
      tabTitle = ["aa", "bb", "cc", "dd"];
    }

    _body = new IndexedStack(
      children: <Widget>[
        new Page1(),
        new Page2(),
        new Page3(),
        new Page4(),
      ],
      index: _tabIndex,
    );
  }

  _getTabIcon(int curIndex) {
    if (_tabIndex == curIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  _getTabIconImage(String path) {
    return new Image.asset(
      path,
      width: 28.0,
    );
  }

  _getTabTitle(int curIndex) {
    return new Text(
      tabTitle[curIndex],
      style: curIndex == _tabIndex ? tabTextStyleSelected : tabTextStyleNormal,
    );
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return new Scaffold(
      body: _body,
      bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: _getTabIcon(0),
              title: _getTabTitle(0),
            ),
            new BottomNavigationBarItem(
              icon: _getTabIcon(1),
              title: _getTabTitle(1),
            ),
            new BottomNavigationBarItem(
              icon: _getTabIcon(2),
              title: _getTabTitle(2),
            ),
            new BottomNavigationBarItem(
              icon: _getTabIcon(3),
              title: _getTabTitle(3),
            ),
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          }),
    );
  }

}