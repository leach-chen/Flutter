import 'package:flutter/material.dart';
import 'package:flutter_study/MyCenter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Hello",
      home: new ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  List<String> items = <String>[
    '布局-个人中心',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'J'
  ];

  List<Widget> widthList = <Widget>[
    new MyCenter()
  ];


  void goPage(int index)
  {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (ctx) {
          return widthList[index];
        }
    ));
  }

  Widget buildItem(int index) {
    return new InkWell(
      onTap: (){
        goPage(index);
      },
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                      alignment: Alignment.center,
                      padding: new EdgeInsets.all(20.0),
                      child: new Text('${items[index]}')),
                ),
                new Container(
                  child: new Image.asset(
                    "images/btn_list_arrow_nor.png",
                    width: 20.0,
                  ),
                  padding: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                )
              ],
            ),
            new Container(
              height: 1.0,
              color: const Color.fromARGB(255, 233, 233, 233),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return buildItem(index);
          }),
    );
  }
}
