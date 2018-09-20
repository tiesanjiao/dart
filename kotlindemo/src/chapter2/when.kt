package chapter2

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

fun main(args: Array<String>) {
    println(Color.ORIGIN.rgb())

}