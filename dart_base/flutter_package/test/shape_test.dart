import 'package:flutter_package/Shap.dart';

/**

 * create by @author：zhaoyangyang
 * on 2018/9/18 19:37

 */

main() {
//  final circle = Circle(2);
//  final square = Square(2);
//  print(circle.area);
//  print(square.area);

  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }

}