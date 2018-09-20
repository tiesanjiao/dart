package chapter2

/**
 * Created by yuxinfeng on 2018/9/20.
 * 字符串模板
 */
fun main(args: Array<String>) {
    // 正常输入args[0]
    val name = if (args.size > 0) args[0] else "Kotlion"
    println(name)

    // 使用字符串模板
    if (args.size > 0) print("${args[0]}") else "1"
}
