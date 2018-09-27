import 'package:flutter/material.dart';

class unMatrial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 对于非Material DesignApp需要指定Text LTR或者RTL
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text('Hello World',
            style: new TextStyle(fontSize: 40.0, color: Colors.black87), textDirection: TextDirection.ltr),
      ),
    );

  }


}