package chapter2

import java.util.*

/**
 * Created by yuxinfeng on 2018/9/20.
 */
/**
 * Kotlin中enum是唯一需要加分号的例子
 */
enum class Color(val a:Int , val b:Int, val c:Int) {
    RED(255,0,0), ORIGIN(255,165,0),YELLOW(255,255,0);
    fun rgb() = (a * 255 + b) * 255 + c
}

fun getColor(color: Color) = when (color) {
    Color.RED -> "warm"
    Color.YELLOW -> "yellow"
    else -> {
        throw Exception("Error")
    }
}

//kotlin 迭代
fun IteraSizeNumber() {
    // 从1到100
    for (i in 1..100) {
        println(i)
    }
    // 从100到1间隔2
    for (i in 100 downTo 1 step 2) {
        println(i)
    }
}

// kotlin map,迭代map
// .. 不仅能够遍历数字范围还能遍历字符范围
fun mapTest() {
    val binaryReps = TreeMap<Char, String>();
    for (c in 'A' .. 'F') {
        val binary = Integer.toBinaryString(c.toInt())
        binaryReps[c] = binary
    }
    for ((key, value) in binaryReps) {
        println("$key, $value")
    }
}

// in检查成员区间
// in 或者 !in

fun main(args: Array<String>) {
    // println(Color.ORIGIN.rgb())
    // println(IteraSizeNumber())
    mapTest()
}