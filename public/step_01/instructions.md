# Introduction

Welcome to the Extension Method workshop. In this workshop, you'll learn how to customize existing classes to make them easier to use!

Dart 2.7 added a feature called extension methods which allow programmers to add new functionality to existing classes. Before we learn more about extension methods, let's see what problem they solve.

## What we'll see

1. Converting a number to local currency format.
2. Using a utility class to reduce repetitive code.
3. Replacing the utility class with extension methods.

## 1. Converting a number to local currency format

Suppose, if we want to convert a number value to the local currency format, we can use the `intl` package's method `NumberFormat.simpleCurrency` to do it.

Example:

```dart
  NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 0).format(number);
```

Next, you can try running the code from the dart-pad and check the output in the console.

It will print the `₹ 1,500` in the console, You can try changing the locale and amount and see other results as well.

As you've completed the first step let's move to the next step.
