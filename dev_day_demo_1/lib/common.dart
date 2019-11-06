import 'package:intl/intl.dart';

class Common {
  static String formatDate(DateTime time) {
    return DateFormat('yyyy/MMM/dd  HH:mm:aa').format(time);
  }
}

class Details {
  final List<DateTime> time;
  final int count;

  Details(this.time, this.count);
}
