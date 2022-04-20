# Extension Methods ⛑️

Now when using `extension methods` instead of using Util class we can define an `extension` which will be applied `on` some datatype, and we will use `this` keyword to get the current instance.

Below is an example of the extension method.

```dart
// Consider giving the extension a longer / more descriptive name
extension FormatExtension on num {
  String get formatCurrency {
    final formatCurrency =
    NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0);
    return formatCurrency.format(this);
  }
}
```

Here if you see We've created an extension called `FormatExtension` on the `num` class and not on `int` or `double`. Why? Because `int` and `double` are subclasses of `num`!

Suppose you go for the extension on `int`, but you later need an extension on `double` as well. Currencies can be in decimal points as well, right? Therefore, there will be two extensions doing the same thing, resulting in redundant code. Instead, we write an extension on `num`, which applies to the `int` and `double` subclasses as well.

