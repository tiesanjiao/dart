import 'package:flutter_package/Bicycle.dart';

/**

 * create by @author：zhaoyangyang 
 * on 2018/9/18 16:32
 
 */


void main() {
  /** The new keyword became optional in Dart 2.
      If you know that a variable's value won't change, you can use final
      instead of var.
   */
  var bike = new Bicycle(2, 1);
  bike.cadence = 10;
  bike.gear = 20;
  bike.speed = 50;
  bike.applyBrake(20);
  print(bike.speed);
  print(bike);
}
