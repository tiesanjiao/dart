
/**
 * 异常处理
 * https://www.dartlang.org/guides/language/language-tour#exceptions
 */

void handleException() {
  throw FormatException('Expected at least 1 section');
}

void distanceTo(int d) => throw UnimplementedError();

main() {
  // handleException();
  distanceTo(1);
}