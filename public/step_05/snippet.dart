main() {
  int counter = 1.incrementCounter();
  print('counter: $counter');
  // Compile time error
  // A value of type 'double' can't be assigned to a variable of type 'int'.
  // TODO(1) Try solving this compile time error
  int shouldBeDouble = 2.0.incrementCounter();
  print('counter: $shouldBeDouble');
}

extension NumGenericExtensions<T extends num> on T {
  T incrementCounter() => this + 1 as T;
}
