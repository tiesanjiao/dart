package chapter2

/**
 * Created by yuxinfeng on 2018/9/20.
 */
// kotin类
class Human(val name: String)

/**
 * Kotlin定义属性，内置实现get,set方法
 */
class Person(val name: String,
             var isMale: Boolean)

/**
 * 自定义访问器
 * 通过get构造器去构造函数
 */
class Rectangle(var width: Int, var height: Int) {
    var isRectangle: Boolean = false
//        方式1
//        get() {
//                return width == height
//        }

        // 方式2
        get() = height == width

}


fun main(args: Array<String>) {
    // java写法不适用
    // Person person = new Person("yxf", true)
    // Kotin 写法省略new
    val person = Person("yxf", true)
    println(person.name)
    println(person.isMale)
    val re = Rectangle(1,3)
    println(re.isRectangle)
}