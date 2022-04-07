import 'package:intl/intl.dart';

void main() {
  final String localCurrency =
      NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0)
          .format(1500);
  print(localCurrency);
}
