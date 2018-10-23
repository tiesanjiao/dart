
import 'package:flutter/material.dart';
import 'package:ui_demo/widget/SecondeRoute.dart';



class FirstRoute extends StatelessWidget {

  final List<BottomNavigationBarItem> items = new List();
  List<Widget> persistentFooterButtons = new List();
  @override
  Widget build(BuildContext context) {
    items.add(new BottomNavigationBarItem(icon: new Text("我是icon1"), title: new Text("我是title1")));
    items.add(new BottomNavigationBarItem(icon: new Text("我是icon2"), title: new Text("我是title2")));
    persistentFooterButtons.add(new Text("我是persistentFooterButtons1"));
    persistentFooterButtons.add(new Text("我是persistentFooterButtons2"));
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Route'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('启动第二个route'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SecondRoute()),
            );
          },
        ),
      ),
      backgroundColor: Colors.cyanAccent,
      bottomNavigationBar: new BottomNavigationBar(items: items),
      floatingActionButton: new FloatingActionButton(onPressed: () {
        //
      }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        persistentFooterButtons: persistentFooterButtons,
        primary:false,

    );
  }
}