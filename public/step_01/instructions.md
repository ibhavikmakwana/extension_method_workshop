# Introduction

Welcome to the Extension Method workshop and customize the existing class to use it easily!

Dart has added a feature called `Extension method` in Dart 2.7.  This allows us to add functionality to existing libraries but before we learn about it, let's see what problem it solves.

## What we'll see

1. Converting a number to local currency format
2. Using Utility class to reduce repetitive code
3. Replacing Utility class with Extension Methods
4. How we can use it for **Flutter** widgets.

## 1. Converting a number to local currency format

Suppose, if we want to convert a number value to the local currency format, we can use the `intl` package's method `NumberFormat.simpleCurrency` to do it.

Example:

```dart
  NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0).format(number);
```

Next, you can try running the code from the dart-pad and check the output in the console.

It will print the `₹ 1,500` in the console, You can try changing the locale and amount and see other results as well.

As you've completed the first step let's move to the next step.
