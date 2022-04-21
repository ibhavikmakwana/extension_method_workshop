# Utility class

In most use cases, you'll want to use the same currency formatter throughout your codebase, which results in repetitive code. To reduce code repetition, you can a "utility class" that knows how to format currencies. Then, use the utility class everywhere in the project.

Below is an example of the Utility class:

```dart
class Util {
  static String formatCurrency(num numberToFormat) {
    final formatCurrency = NumberFormat.simpleCurrency(
      locale: 'en_IN',
      decimalDigits: 0,
    );
    return formatCurrency.format(numberToFormat);
  }
}
```

This class contains a method that returns a formatted currency as `String` and it expects an `int` parameter called `decimalDigits`.

You can use it in your dart code like this:

```dart
final formattedCurrency =  Util.formatCurrency(1500);
```

This is simple, right? However, have you noticed something usual(or unusual)?

Yes, the method `formatCurrency` is static. While this is not a good nor bad practice, the `Util` class is unnecessary, because we are not calling methods on a specific instance. Instead, we are passing an `int` into a static method.

But **What If...?** you can write the below code instead?

`1500.formatCurrency;`

Looks neat and easy and much more readable, right?

Let's find out how you can do so in the next step.
