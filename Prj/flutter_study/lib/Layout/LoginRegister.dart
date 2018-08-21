import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study/Layout/MyCenter.dart';

class LoginRegister extends StatefulWidget {

  final MyCenterState myCenter;

  LoginRegister({Key key,this.myCenter}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return new LoginRegisterState();
  }
}

class LoginRegisterState extends State<LoginRegister> {
  bool isLogin = true;
  BuildContext mContext;

  _setPage(bool login) {
    setState(() {
      this.isLogin = login;
    });
  }

  Widget _titleWidget(String text) {
    return new Stack(
      children: <Widget>[
        new Container(
          margin: new EdgeInsets.only(top: 20.0),
          height: 45.0,
          child: new GestureDetector(
            onTap: () {
              Navigator.pop(context,"refresh");
            },
            child: new Container(
              padding: new EdgeInsets.only(left: 18.0, right: 18.0),
              child: new Image.asset(
                "images/title_btn_return_nor.png",
                width: 22.0,
              ),
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          margin: new EdgeInsets.only(top: 20.0),
          height: 45.0,
          child: new Container(
            child: new Text(
              text,
              style: new TextStyle(
                fontSize: 18.0,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSwitchItem() {
    return new Container(
      margin: new EdgeInsets.only(top: 45.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new GestureDetector(
            onTap: () {
              _setPage(true);
            },
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(right: 30.0),
                  alignment: Alignment.centerRight,
                  child: new Text(
                    "Login",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: isLogin
                          ? const Color(0xffffffff)
                          : const Color(0xff83878E),
                    ),
                  ),
                ),
                isLogin
                    ? new Container(
                        margin: new EdgeInsets.only(right: 30.0, top: 5.0),
                        color: Colors.white,
                        width: 45.0,
                        height: 2.0,
                      )
                    : new Container()
              ],
            ),
          )),
          new Expanded(
              child: new GestureDetector(
            onTap: () {
              _setPage(false);
            },
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(left: 30.0),
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    "Register",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: isLogin
                          ? const Color(0xff83878E)
                          : const Color(0xffffffff),
                    ),
                  ),
                ),
                !isLogin
                    ? new Container(
                        margin: new EdgeInsets.only(left: 30.0, top: 5.0),
                        color: Colors.white,
                        width: 60.0,
                        height: 2.0,
                      )
                    : new Container()
              ],
            ),
          )),
        ],
      ),
    );
  }

  _buildEdittext() {
    return isLogin
        ? new Container(
            margin: new EdgeInsets.only(left: 28.0, right: 28.0, top: 47.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(right: 17.0, left: 17.0),
                      child: new Image.asset(
                        "images/login_icon_address_nor.png",
                        width: 22.0,
                      ),
                    ),
                    new Expanded(
                      child: new TextField(
                          style: new TextStyle(
                              color: Colors.white, fontSize: 12.0),
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: new TextStyle(
                                fontSize: 12.0, color: Colors.grey),
                            border: InputBorder.none,
                            /* labelText: "Email",
                      labelStyle:new TextStyle(color: const Color(0xFF424242)),*/
                          )),
                    )
                  ],
                ),
                new Container(
                  color: Color(0xff444850),
                  height: 1.0,
                  margin: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(right: 17.0, left: 17.0),
                      child: new Image.asset(
                        "images/login_icon_password_nor.png",
                        width: 22.0,
                      ),
                    ),
                    new Expanded(
                      child: new TextField(
                          style: new TextStyle(
                              color: Colors.white, fontSize: 12.0),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: new TextStyle(
                                fontSize: 12.0, color: Colors.grey),
                            border: InputBorder.none,
                            /* labelText: "Email",
                      labelStyle:new TextStyle(color: const Color(0xFF424242)),*/
                          )),
                    )
                  ],
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 5.0, bottom: 5.0),
                  color: Color(0xff444850),
                  height: 1.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        final snackBar =
                            new SnackBar(content: new Text('你点击了忘记密码'));
                        Scaffold.of(mContext).showSnackBar(snackBar);
                      },
                      child: new Container(
                        padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: new Text(
                          "Forgot password?",
                          style: new TextStyle(
                            fontSize: 12.0,
                            color: Color(0xff83878E),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

               new GestureDetector(
                 onTap: (){
                   final snackBar =
                   new SnackBar(content: new Text('你点击了登录'));
                   Scaffold.of(mContext).showSnackBar(snackBar);
                   widget.myCenter.haha();
                 },
                 child:  new Container(
                   alignment: Alignment.center,
                   margin: new EdgeInsets.only(top: 33.0),
                   padding: new EdgeInsets.only(
                       top: 14.0, left: 22.0, bottom: 14.0, right: 22.0),
                   child: new Text(
                     "Login",
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
            ),
          )
        : new Container(margin: new EdgeInsets.only(left: 28.0, right: 28.0, top: 47.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(right: 17.0, left: 17.0),
                child: new Image.asset(
                  "images/login_icon_address_nor.png",
                  width: 22.0,
                ),
              ),
              new Expanded(
                child: new TextField(
                    style: new TextStyle(
                        color: Colors.white, fontSize: 12.0),
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      hintStyle: new TextStyle(
                          fontSize: 12.0, color: Colors.grey),
                      border: InputBorder.none,
                      /* labelText: "Email",
                      labelStyle:new TextStyle(color: const Color(0xFF424242)),*/
                    )),
              )
            ],
          ),
          new Container(
            color: Color(0xff444850),
            height: 1.0,
            margin: new EdgeInsets.only(top: 5.0, bottom: 5.0),
          ),
          new Row(
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(right: 17.0, left: 17.0),
                child: new Image.asset(
                  "images/login_icon_password_nor.png",
                  width: 22.0,
                ),
              ),
              new Expanded(
                child: new TextField(
                    style: new TextStyle(
                        color: Colors.white, fontSize: 12.0),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: new TextStyle(
                          fontSize: 12.0, color: Colors.grey),
                      border: InputBorder.none,
                      /* labelText: "Email",
                      labelStyle:new TextStyle(color: const Color(0xFF424242)),*/
                    )),
              )
            ],
          ),
          new Container(
            margin: new EdgeInsets.only(top: 5.0, bottom: 5.0),
            color: Color(0xff444850),
            height: 1.0,
          ),

          new Row(
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(right: 17.0, left: 17.0),
                child: new Image.asset(
                  "images/login_icon_code_nor.png",
                  width: 22.0,
                ),
              ),
              new Expanded(
                child: new TextField(
                    style: new TextStyle(
                        color: Colors.white, fontSize: 12.0),
                    decoration: InputDecoration(
                      hintText: "Input verification code",
                      hintStyle: new TextStyle(
                          fontSize: 12.0, color: Colors.grey),
                      border: InputBorder.none,
                      /* labelText: "Email",
                      labelStyle:new TextStyle(color: const Color(0xFF424242)),*/
                    )),
              ),

              new GestureDetector(
                onTap: (){
                  final snackBar =
                  new SnackBar(content: new Text('Send Code'));
                  Scaffold.of(mContext).showSnackBar(snackBar);
                },
                child:  new Container(
                  alignment: Alignment.center,
                  padding: new EdgeInsets.only(top: 7.0, left: 20.0, bottom: 7.0, right: 20.0),
                  child: new Text(
                    "Send Code",
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
          ),
          new Container(
            margin: new EdgeInsets.only(top: 5.0, bottom: 5.0),
            color: Color(0xff444850),
            height: 1.0,
          ),

          new GestureDetector(
            onTap: (){
              final snackBar =
              new SnackBar(content: new Text('你点击了注册'));
              Scaffold.of(mContext).showSnackBar(snackBar);
            },
            child:  new Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.only(top: 33.0),
              padding: new EdgeInsets.only(
                  top: 14.0, left: 22.0, bottom: 14.0, right: 22.0),
              child: new Text(
                "Register",
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xFF3A3E47),
      body: new Builder(builder: (BuildContext context) {
        mContext = context;
        return new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              _titleWidget("VAVA"),
              _buildSwitchItem(),
              _buildEdittext(),
            ],
          ),
        );
      }),
    );
  }
}
