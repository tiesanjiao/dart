/**

 * create by @author：zhaoyangyang 
 * on 2018/9/18 19:57
 * 函数式编程
 */

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
    print(scream(length));
  }
// skip、take、map
  values.skip(1).take(3).map(scream).forEach(print);
}