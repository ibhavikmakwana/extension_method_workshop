void main() {
  // TODO(2) Use extension method instead.
  print(Util.isValidURL('https://flutter.dev'));
}

// TODO(1) Replace this util class with an extension method.
class Util {
  static bool isValidURL(String url) {
    return Uri.parse(url).isAbsolute;
  }
}
