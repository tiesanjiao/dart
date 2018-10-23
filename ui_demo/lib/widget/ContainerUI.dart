import 'package:flutter/material.dart';

class ContainerUI extends StatelessWidget {
  const ContainerUI();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("Container"),
        leading: new BackButton(),
      ),
      body: new LYContainerContent(),
    );
  }
}

class LYContainerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: new Wrap(
        children: <Widget>[
          new Container(
            //      color: Colors.red, // 有decoration不能有color，会报错
//      constraints: new BoxConstraints.expand(height: 500.0, width: 500.0),
//      constraints: BoxConstraints(maxHeight: 100.0, maxWidth: 100.0),
            // 前景装饰
            decoration: new BoxDecoration(
              // 边框
              border: new Border.all(width: 2.0, color: Colors.red),
              color: Colors.blue, // 背景色
              borderRadius: new BorderRadius.all(new Radius.circular(20.0)), // 圆角
              image: new DecorationImage(
                image: new NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539596842731&di=8254e3c85ab3ff27f0dfe69d77e48e7f&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F962bd40735fae6cd5919273907b30f2442a70f3c.jpg'),
              ),
            ),
//      foregroundDecoration: new BoxDecoration(
//        border: new Border.all(width: 3.0, color: Colors.cyan),
//        color: Colors.amberAccent,
//        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
//        image: new DecorationImage(
//          image: new NetworkImage(
//              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2784148233,3965393628&fm=26&gp=0.jpg'),
//        ),
//      ),
//      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
            child: new Text('Hello World'),
//      height: 200.0,
//      width: 200.0,
//      transform: new Matrix4.rotationZ(0.0),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: new LYRoundButton(
              title: new Text(
                "I am a default button",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              disabled: false,
              onPress: () {
                final snackBar = new SnackBar(content: new Text('Click One!!'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              text: "I am a default button",
            ),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: new LYRoundButton(
              width: 250.0,
              height: 80.0,
              backgroundColor: const Color(0xFF41CB39),
              activeBackgroundColor: const Color(0xB341CB39),
              disabledBackgroundColor: const Color(0x3341CB39),
              title: new Text(
                "I am a custom button",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              disabled: false,
              onPress: () {
                final snackBar = new SnackBar(content: new Text('Click Two!!'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              text: "I am a custom button",
            ),
          ),
          new LYRoundButton(
            title: new Text(
              "I`m a disabled button",
              style: new TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            disabled: true,
            onPress: () {
              final snackBar = new SnackBar(content: new Text('Click Three!!'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
            text: "I`m a disabled button",
          ),
        ],
      ),
    );
  }
}


// 自定义带点击态圆角view
class LYRoundButton extends StatefulWidget {
  static const defaultBackgroundColor = const Color(0xFF8B5FFE);
  static const defaultActiveBackgroundColor = const Color(0xB38B5FFE);
  static const defaultDisabledBackgroundColor = const Color(0x338B5FFE);
  static const textDisabledBackgroundColor = const Color(0xFFFFFFFF);
  static const textActiveBackgroundColor = const Color(0xFF3385FF);

  LYRoundButton({
    this.title,
    this.onPress,
    this.height = 52.0,
    this.width = double.infinity,
    this.disabled = false,
    this.backgroundColor = defaultBackgroundColor,
    this.activeBackgroundColor = defaultActiveBackgroundColor,
    this.disabledBackgroundColor = defaultDisabledBackgroundColor,
    this.text,
    this.textActivityColor = textActiveBackgroundColor,
    this.textDisableColor = textDisabledBackgroundColor

  });

  final Widget title;
  final Color backgroundColor, activeBackgroundColor, disabledBackgroundColor, textActivityColor, textDisableColor;
  final VoidCallback onPress;
  final double height, width;
  final bool disabled;
  final String text;

  @override
  _LYRoundButtonState createState() => new _LYRoundButtonState();
}

class _LYRoundButtonState extends State<LYRoundButton> {
  Color currentColor;
  Color currentTextColor;

  @override
  void initState() {
    super.initState();
    if (widget.disabled) {
      currentColor = widget.disabledBackgroundColor;
      currentTextColor = widget.textActivityColor;
    } else {
      currentColor = widget.backgroundColor;
      currentTextColor = widget.textDisableColor;
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    currentColor = widget.backgroundColor;
    currentTextColor = widget.textActivityColor;
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("onTap");
        if (widget.onPress != null && !widget.disabled) {
          widget.onPress();
        }
      },
      onTapDown: (TapDownDetails details) {
        print("onTapDown");
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.activeBackgroundColor;
            currentTextColor = widget.textActivityColor;
          });
        }
      },
      onTapUp: (TapUpDetails details) {
        print("onTapUp");
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.backgroundColor;
            currentTextColor = widget.textDisableColor;
          });
        }
      },
      onTapCancel: () {
        print("onTapCancel");
        if (!widget.disabled) {
          setState(() {
            currentColor = widget.backgroundColor;
            currentTextColor = widget.textDisableColor;
          });
        }
      },
      child: new Container(
        decoration: new BoxDecoration(
          color: currentColor,
          borderRadius:
          new BorderRadius.all(new Radius.circular(widget.height / 2.0)),
        ),
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        child: new Text(
          widget.text,
        style: new TextStyle(
          fontSize: 18.0,
          color: currentTextColor,
        ),
      ),
      ),
    );
  }
}
