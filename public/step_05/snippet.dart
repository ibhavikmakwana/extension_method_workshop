import 'package:intl/intl.dart';

void main() {
  print(11500.formatCurrency);
}

extension XNum on num {
  String get formatCurrency {
    final formatCurrency =
        NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0);
    return formatCurrency.format(this);
  }
}
