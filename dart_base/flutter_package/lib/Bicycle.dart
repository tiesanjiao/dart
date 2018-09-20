/**

 * create by @author：zhaoyangyang
 * on 2018/9/18 16:07
 * 创建一个简单的类

 */
class Bicycle {

  /**
   *  构造方法的两种实现方式
   */

  Bicycle(this.cadence, this.gear);

//   Bicycle(int cadence, int speed, int gear) {
//   this.cadence = cadence;
//   this.speed = speed;
//   this.gear = gear;
// }

  /** 变量：
   *Dart doesn't have keywords for public, private, or protected
   */
  int cadence;
  int _speed = 1;
  int gear;

  @override
  String toString() => 'Bicycle: ${_speed} mph $cadence';

  int get speed => _speed;

  void set speed(int a) {
    this._speed = a;
  }

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}