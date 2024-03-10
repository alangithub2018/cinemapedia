

import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en',
    ).format(number);
    return formattedNumber;
  }
  
  static String decimals(double number, int decimalDigits) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: decimalDigits,
      symbol: '',
    ).format(number);
    return formattedNumber;
  }
}