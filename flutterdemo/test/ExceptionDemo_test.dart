import 'package:flutterdemo/ExceptionDemo.dart';

void main() {
//  try {
//    handleException();
//  } on FormatException {
//    print("Catch this Exception");
//  }

    try {
      // handleException();
      distanceTo(1);
    } on OutOfMemoryError {
      print("OutOfMemoryError");
    } on Exception catch(e) {
      print('Unknown exception: $e');
    } catch (e, s) {
      // No specified type, handles all
      print('Something really unknown: $e');
      print('Something really unknown: $s');
    } finally {
      print('finally End');
    }
}