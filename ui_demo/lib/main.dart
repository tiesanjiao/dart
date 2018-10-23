import 'package:flutter/material.dart';
import 'package:ui_demo/widget/ContainerUI.dart';
import 'package:ui_demo/widget/FirstRoute.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的的title', // 出现在任务管理器上的名称
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new UIPage(title: 'myUIDemo'),
      routes: <String, WidgetBuilder> {
        '/container': (BuildContext context) => new ContainerUI(),
//        '/' :(context)=> new UIPage(title: "routePage"),
//        Navigator.defaultRouteName : (context)=>new UIPage(title: "routePage",)
      },// 页面路由定义，定义了所有的页面的映射
      navigatorObservers: [new MyObserver()],
    );
  }
}

class UIPage extends StatefulWidget{
  final String title;
  UIPage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new UIState();
  }

}

class MyButton extends StatefulWidget {
  final Widget title;
  final VoidCallback onPress;
  final double height = 52.0;
  final double width = double.infinity;

   MyButton({this.title, this.onPress});
  @override
  State<StatefulWidget> createState() {
    return new MyButtonState();
  }
}


class UIState extends State<UIPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(appBar: new AppBar(title: new Text(widget.title)),
      body: new Container(child: new Align(heightFactor: 4.0, widthFactor :2.0,
        child: new MyButton(title: new Text("myContainerDemoPage"), onPress: () {
//        _navigateToContainerPage(context, "container");
        // 构建路由并跳转
//        Navigator.push(
//          context,
//          new MaterialPageRoute(builder: (context) {
//            return new FirstRoute();
//          }),
//        );
        _navigateToPage(context);
        },
      ),
      ),
        margin: new EdgeInsets.all(10.0),
        color: Colors.amber,



      )
    );
  }
}


class MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(onTap: () {
      if (widget.onPress != null ) {
        widget.onPress();
      }
    },
    child: new Container(
      decoration: new BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius:
        new BorderRadius.all(new Radius.circular(widget.height / 2.0)),
      ),
      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      child: widget.title,
    ),);
  }

}


//继承NavigatorObserver
class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
// 当调用Navigator.push时回调
    super.didPush(route, previousRoute);
//可通过route.settings获取路由相关内容
//route.currentResult获取返回内容
    String name = route.settings.name;
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("pagename");
    stringBuffer.write(name);
    print(stringBuffer.toString());
  }

}
/**
 * 跳转页面方法
 */
void _navigateToContainerPage(BuildContext context, String page) {
  print("Page:$page");
  Navigator.of(context).pushNamed('/$page');
}

/**
 * 自定义页面过渡效果
 */
void _navigateToPage(BuildContext context) {
  Navigator.push(context,
      new PageRouteBuilder(pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => new FirstRoute(),
        transitionDuration: const Duration(milliseconds: 1000),
        transitionsBuilder: (BuildContext context, Animation<double> animation, _, Widget child) =>
        new FadeTransition(opacity: animation,
          child: new ScaleTransition(
            scale: new Tween<double>(begin: 0.0, end: 1.0).animate(animation),
            child: child,),),
      ));
}




