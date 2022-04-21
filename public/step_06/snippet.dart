import 'package:intl/intl.dart';

void main() {
  print(11500.formatCurrency);

  int counter = 1.incrementCounter();
  print('counter: $counter');

  double shouldBeDouble = 2.0.incrementCounter();
  print('counter: $shouldBeDouble');
}

extension XNum on num {
  String get formatCurrency {
    final formatCurrency =
        NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0);
    return formatCurrency.format(this);
  }
}

extension NumGenericExtensions<T extends num> on T {
  T incrementCounter() => this + 1 as T;
}
