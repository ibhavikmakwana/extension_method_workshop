# Extension Methods ⛑️

Now when using `extension methods` instead of using Util class we can define an `extension` which will be applied `on` some datatype, and we will use `this` keyword to get the current instance.

Below is an example of the extension method.

```dart
extension XNum on num {
  String get formatCurrency {
    final formatCurrency =
    NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0);
    return formatCurrency.format(this);
  }
}
```

Here if you see We've created an extension called `XNum` on the `num` class and not on `int` or `double`, why? because of the inheritance issue.

Suppose you go for the extension on `int` but you later need an extension on `double` as well, currency can be in decimal points as well, right? So there'll be Two extensions doing almost similar works resulting in the redundant code and as `int` and `double` are subclasses of the `num` we've defined extension on the `num`.

