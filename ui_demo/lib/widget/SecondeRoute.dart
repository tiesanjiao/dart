import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Route'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('退出'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
