import 'package:flutter/material.dart';

class MaterialDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter UI',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("materialDesign"),
          ),
          //      body: new Center(
          //        child: new Text('Hello World', style: new TextStyle(fontSize: 32.0)),
          //      ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getRatingContainer(),
                iconList
              ],
            ),
          ),
        ));
  }

  /**
   * 行方向对齐
   */
  Widget getAlginRowWidget() {
    new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      new Icon(Icons.star),
      new Icon(Icons.near_me),
      new Icon(Icons.access_alarms)
    ]);
  }

  /**
   * 行方向对齐
   */
  Widget getAlginColumnWidget() {
    new Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      new Icon(Icons.star),
      new Icon(Icons.near_me),
      new Icon(Icons.access_alarms)
    ]);
  }

  /**
   * 调整控件大小
   */
  Widget getAlginExpandRowWidget() {
    new Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      new Expanded(
        child: new Icon(Icons.star),
      ),
      new Expanded(
        flex: 2,
        child: new Icon(Icons.near_me),
      ),
      new Expanded(
        child: new Icon(Icons.star),
      ),
    ]);
  }

  /**
   * 控件之间挤压
   */
  Widget getPressWidget() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.black),
        new Icon(Icons.star, color: Colors.black),
      ],
    );
  }


  /**
   * 获取评级行
   */
  Container getRatingContainer() {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          new Text(
            '170 Reviews',
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }


  /**
   * 获取图标行
   * 设置字体样式
   */
  var iconList = DefaultTextStyle.merge(
    style: new TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18.0,
        height: 2.0),
    child: new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Column(
            children: [
              new Icon(Icons.kitchen, color: Colors.green[500]),
              new Text('PREP:'),
              new Text('25 min'),
            ],
          ),
          new Column(
            children: [
              new Icon(Icons.timer, color: Colors.green[500]),
              new Text('COOK:'),
              new Text('1 hr'),
            ],
          ),
          new Column(
            children: [
              new Icon(Icons.restaurant, color: Colors.green[500]),
              new Text('FEEDS:'),
              new Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );

}
