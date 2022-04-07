import 'package:intl/intl.dart';

void main() {
  print(Util.formatCurrency(1500));
}

class Util {
  static String formatCurrency(int decimalDigits) {
    final formatCurrency = NumberFormat.simpleCurrency(
      locale: 'en_IN',
      decimalDigits: 0,
    );
    return formatCurrency.format(decimalDigits);
  }
}
