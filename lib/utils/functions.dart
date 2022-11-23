import 'package:intl/intl.dart';

class Functions {
  //String timeNow = DateFormat.yMd().add_jm().format(DateTime.now());
  static String timeNow() {
    String timeNow = DateFormat.yMd().add_jm().format(DateTime.now());
    return timeNow;
  }
}
