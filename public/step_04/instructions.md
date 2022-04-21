# DIY 👷

You've learned how to format the number value to the currency format using an `extension method`, Let's check out one more `Utility` class and try to migrate it to the `extension method`.


## Utility class for checking if string is url or not

```dart
class Util {
  static bool isValidURL(String url) {
    return Uri.parse(url).isAbsolute;
  }
}

```

Can you try converting this class to an extension method?

If you've completed the give TODOs then let's move to the next and last topic of the `extension method`.