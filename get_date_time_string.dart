import 'package:intl/intl.dart';

String getDateTimeString(DateTime dateTime) {
  final _date = DateFormat("dd MMMM yy").format(dateTime);
  final _hour = ((dateTime.hour / 12) + (dateTime.hour % 12))
      .toInt()
      .toString()
      .padLeft(2, '0');
  final _mins = dateTime.minute.toString().padLeft(2, '0');
  final _amPm = dateTime.hour >= 12 ? "PM" : "AM";

  return "$_date; $_hour:$_mins $_amPm";
}
