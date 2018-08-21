import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/Layout/LoginRegister.dart';

class MyCenter extends StatefulWidget {

  final message;

  MyCenter({Key key,this.message}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return new MyCenterState();
  }
}

class MyCenterState extends State<MyCenter> {
  BuildContext mContext;

  static const String TAG_START = "startDivider";
  static const String TAG_CENTER = "centerDivider";
  bool isLogin = false;

  final imageArray = [
    "images/title_btn_trajectory_nor.png",
    "images/title_btn_trajectory_nor.png",
    "images/title_btn_trajectory_nor.png",
    "images/title_btn_trajectory_nor.png",
    "images/title_btn_trajectory_nor.png",
    "images/title_btn_trajectory_nor.png"
  ];
  final titleArray = [
    "Travel Log",
    "My DashCam",
    "Driving Journal",
    "Help Center",
    "Update",
    "About VAVA Dash"
  ];

  List listData = [];


  MyCenterState(){
    initData();
  }

  initData() {
    for (int i = 0; i < imageArray.length; i++) {
      if (i == 0) {
        listData.add(TAG_START);
      } else {
        listData.add(TAG_CENTER);
      }
      listData.add(new ListItem(icon: imageArray[i], title: titleArray[i]));
    }
    listData.add(TAG_CENTER);
  }

  rendUI(BuildContext context, int index) {
    var item = listData[index];
    if (item is String) {
      if (item.endsWith(TAG_START)) {
        return _buildLine(8.0);
      } else {
        return _buildLine(0.0);
      }
    } else if (item is ListItem) {
      return _buildItem(item.icon, item.title, index);
    }
  }

  void _setIsLogin(bool isLogin)
  {
    setState(() {
      this.isLogin = isLogin;
    });
  }

  void haha()
  {
    final snackBar = new SnackBar(content: new Text("hahahahahaha"));
    Scaffold.of(mContext).showSnackBar(snackBar);

    _setIsLogin(true);
  }

  _login() async
  {
    final result = await Navigator.of(mContext).push(new MaterialPageRoute(
        builder: (ctx) {
          return new LoginRegister(myCenter:this);
        }
    ));
    if (result != null && result == "refresh") {
      final snackBar = new SnackBar(content: new Text('$result'+"返回来的"));
      Scaffold.of(mContext).showSnackBar(snackBar);
    }
  }

  Widget _buildHeader() {
    return new Stack(
      children: <Widget>[
        new Image.asset("images/i_img_bg_nor.png"),
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                final snackBar = new SnackBar(content: new Text('你点击了设置'));
                Scaffold.of(mContext).showSnackBar(snackBar);
              },
              child: new Container(
                /*color: Colors.yellow,*/
                margin: new EdgeInsets.only(top: 18.0),
                padding: new EdgeInsets.all(15.0),
                child: new Image.asset(
                  "images/title_btn_setting_nor.png",
                  width: 22.0,
                  height: 22.0,
                ),
              ),
            ),
          ],
        ),
        !isLogin ? new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                //final snackBar = new SnackBar(content: new Text('你点击了登录注册'));
                //Scaffold.of(mContext).showSnackBar(snackBar);
                //_setIsLogin(true);
                _login();
              },
              child: new Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.only(top: 83.0),
                padding: new EdgeInsets.only(
                    top: 14.0, left: 22.0, bottom: 14.0, right: 22.0),
                child: new Text(
                  "Register/Login",
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: const Color(0xffffffff),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: const Color(0xFF03BEFD),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            )
          ],
        ):new Container(),
      ],
    );
  }

  Widget _buildLine(double marginTop) {
    return new Container(
      height: 1.0,
      color: const Color(0xff444850),
      margin: EdgeInsets.only(top: marginTop),
    );
  }

  Widget _buildItem(String imageName, String text, int index) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(
            content: new Text(
          '$index',
        ));
        Scaffold.of(mContext).showSnackBar(snackBar);

        switch (index) {
          case 0:
            break;
        }
      },
      child: new Container(
        height: 55.0,
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(left: 24.0),
              child: new Image.asset(imageName, width: 22.0),
            ),
            new Container(
              margin: new EdgeInsets.only(left: 15.0),
              child: new Text(
                text,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            new Expanded(
                child: new Container(
                    color: const Color(0xFF3A3E47),
                    alignment: Alignment.centerRight,
                    margin: new EdgeInsets.only(right: 15.0),
                    child: new Image.asset(
                      "images/btn_list_arrow_nor.png",
                      width: 22.0,
                      height: 22.0,
                    )))
          ],
        ),
      ),
    );
  }

  Widget _bulidMyCenter(BuildContext context) {
    return new Container(
        child: new Column(
      children: <Widget>[
        _buildHeader(),
        new Flexible(
          child: new ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, i) => rendUI(context, i),
          ),
        ),
      ],
    ));
  }
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xFF3A3E47),
      body: new Builder(builder: (BuildContext context) {
        mContext = context;
        new Timer(Duration(microseconds: 1000),(){
          if(!isShow) {
            final snackBar = new SnackBar(content: new Text(widget.message));
            Scaffold.of(mContext).showSnackBar(snackBar);
          }
          isShow = true;
        });
        return _bulidMyCenter(context);
      }),
    );
  }
}

class ListItem {
  String icon;
  String title;

  ListItem({this.icon, this.title});
}
