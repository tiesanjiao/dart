/**

 * create by @author：zhaoyangyang
 * on 2018/9/18 19:36
 * 创建一个工厂
 * 使用Dart的factory关键字创建工厂构造函数
 */

import 'dart:math';

abstract class Shape {
  num get area;

  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
}

/**
 * 实现一个接口
 * Dart语言不包含interface关键字，因为每个类都被定义成接口类型
 */
class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  num get area => pow(side, 2);
}