

import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number, [int decimalDigits = 0]) {
    return NumberFormat.compactCurrency(
      decimalDigits: decimalDigits,
      symbol: '',
      locale: 'en',
    ).format(number);
  }

  static String shortDate(DateTime date) {
    return DateFormat.yMMMEd('es').format(date);
  }
}