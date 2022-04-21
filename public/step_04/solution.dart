void main() {
  print('https://flutter.dev'.isValidURL());
}

extension ValidationExtension on String {
  bool isValidURL() {
    return Uri.parse(this).isAbsolute;
  }
}
