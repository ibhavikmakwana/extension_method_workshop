main() {
  int counter = 1.incrementCounter();
  print('counter: $counter');

  double shouldBeDouble = 2.0.incrementCounter();
  print('counter: $shouldBeDouble');
}

extension NumGenericExtensions<T extends num> on T {
  T incrementCounter() => this + 1 as T;
}
