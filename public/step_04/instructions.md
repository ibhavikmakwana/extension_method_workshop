# Extension Methods and Widgets

We've checked how to use `Extension Methods` for our dart code but for Flutter widgets as well `extensions` can be very handy.

We will check out one small example about applying padding on top of some widgets and we will be using the padding widget again and again in most of the applications with some basic values of padding as well.

For example, you got a `Text` and you've wrapped with `Padding` with the value of `const EdgeInsets.all(16)` and you might be using similar padding at many places.

This is what normal Flutter code looks like.

```dart
Padding(
  padding: const EdgeInsets.all(16.0),
  child: Text(
    'Extension Method',
    style: Theme.of(context).textTheme.headline6,
  ),
)
```

Now, let’s see how we can accomplish the same with the help of Dart extensions.

We'll create an `extension` on the `Widget`.

```dart
extension XWidget on Widget {
  Widget padding16() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: this,
    );
  }
}
```

This extension wraps the given Widget with the `Padding` of 16, which you can use like below:


```dart
Text(
  'Extension Method',
  style: Theme.of(context).textTheme.headline6,
).padding16,
```

You can check out the example of the same by running dart pad code.

Also do try to solve a `TODO` from the dart pad code and try to apply a color to the `Text` widget using the `ColoredBox` widget extension.
