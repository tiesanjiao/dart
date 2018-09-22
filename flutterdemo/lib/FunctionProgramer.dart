/**
 * 函数式编程例子
 * Dart 是一个真正的面向对象语言，方法也是对象并且具有一种 类型， Function。
 * 这意味着，方法可以赋值给变量，也可以当做其他方法的参数。
 * 也可以把 Dart 类的实例当做方法来调用。 详情请参考 Callable classes。
 * http://dart.goodev.org/guides/language/language-tour#functions
 */


/**
 * Dart 是静态作用域语言，变量的作用域在写代码的时候就确定过了。
 * 基本上大括号里面定义的变量就 只能在大括号里面访问，和 Java 作用域 类似。
 */
var topLevel = true;


bool isNotNull(int num) {
  return num != null;
}

bool isNotNull2(int num) => null != num;

/**
 * 定义可选参数，带默认值，记得加上{}
 */
bool isNotNull3({int num: 2}) => null != num;

/**
 * 可选位置参数，带默认值，记得加上[]
 */
String say(String name, String sex, [String role, String height]) {
  var result = '$name is $sex';
  if (role != null) {
    result = '$result is $role';
  }
  print(result);
}

/**
 * 默认参数，带默认值，没有指定默认值为null
 * 可选参数和位置蚕食不能同时存在
 */
String say2(String sex, {String name='sanjiaotie'}) {
  var result = '$name is $sex';
  print(result);
}

void printElment(int element) => print(element);

// 把方法复制给一个变量
var say3 = (msg) => '!!!${msg.toUpperCase()}!!!';


/**
 * 词法闭包
 */
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

Function makeMul(num mul) {
  return (num i) => mul * i;
}

Function makeSub(num sub) {
  return (num i) => sub - i;
}


// main函数默认带一个List<String>参数
main(List<String> arguments) {
//  isNotNull3();
//  isNotNull(1);
//  say('san', 'girl');
//  say('san', 'girl', '1');
//  say2("girl");
//
//  // 函数式编程的体现，把函数当做参数传入
//  var list = [1, 2, 3];
//  list.forEach(printElment);
//
//  print(say3('sanjiaotie'));
//
//  var list2 = ['apples', 'oranges', 'grapes', 'bananas', 'plums'];
//  list2.forEach((i) {
//    print(list2.indexOf(i).toString() + ': ' + i);
//  });
//
//  // 静态作用域
//  var insideMain = true;
//  myFunction() {
//    var insideFunction = true;
//    nestedFunction() {
//      var insideNestedFunction = true;
//
//      assert(topLevel);
//      assert(insideMain);
//      assert(insideFunction);
//      assert(insideNestedFunction);
//    }
//  }
  // var add2 = makeAdder(2);
  var result = makeSub(makeMul(makeAdder(1)(2))(3))(4);
  print(result);

}