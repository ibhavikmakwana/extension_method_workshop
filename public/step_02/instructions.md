# Utility class

In most use cases, we'll be using the same currency formatter code at many places which results in repetitive code, and to reduce that we can create a utility class/wrapper which we can use everywhere in the project/app to reduce the repetitive code.

Below is an example of the Utility class

```dart
class Util {
  static String formatCurrency(int decimalDigits) {
    final formatCurrency = NumberFormat.simpleCurrency(
      locale: 'en_IN',
      decimalDigits: decimalDigits,
    );
    return formatCurrency.format(decimalDigits);
  }
}
```

This class contains a method that returns a formatted currency as `String` and it expects an `int` parameter called `decimalDigits`.

You can use it in your dart/flutter code like this

```dart
final formattedCurrency =  Util.formatCurrency(1500);
```

This is simple right but have you noticed something usual(or unusual)?

Yes, the method `formatCurrency` is static while this is not a good nor bad practice, `Util` class is redundant in our code, and we are too much spoiled by the OOP to call methods on an instance directly but right now we are passing `int` instance into a static method.

But **What If...?** we can write the below code instead?

`1500.formatCurrency;`

Looks neat and easy and much more readable, right?

Let's find out how we can do so in the next step.
