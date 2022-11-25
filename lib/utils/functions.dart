import 'package:intl/intl.dart';

class Functions {
  //String timeNow = DateFormat.yMd().add_jm().format(DateTime.now());
  static String timeNow() {
    String timeNow = DateFormat.yMd().add_jm().format(DateTime.now());
    return timeNow;
  }

  static textInEx(bool isIncExp, num amount) {
    return isIncExp == true ? '+ $amount' : '- $amount';
  }
}
