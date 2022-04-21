# Using Generic extension methods

If you remember the previous steps, we've used the `num` to avoid the inheritance issue while converting currency as it can be `double` as well as `int`.

But what if you only require a specific type to be return from an extension, to solve this issue you can actually make your extensions generic
 
For instance, You have added an extension on `num` to avoid the inheritance issue like below.

```dart
extension NumExtensions on num {
  num incrementCounter() => this + 1;
}
```

We can implement the extension method easily but this extension is always going to return num but you want to invoke it over a int.

```dart
void main() {
  // Compile time error
  // A value of type 'num' can't be assigned to a variable of type 'int'.
  int counter = 1.incrementCounter();
}
```

Now, you might try to change the return type of `incrementCounter` extension method to `int`.

```dart
extension NumExtensions on num {
  // Compile time error
  // A value of type 'num' can't be returned from the method 'incrementCounter' because it has a return type of 'int'.
  // as [this] is type of [num] weather you use it on the [int] or [double] type.
  int incrementCounter() => this + 1;
}
```

What if...? You can make the return type of the extension method specific?
lo and behold, generic extensions are here for the rescue.


```dart
extension NumGenericExtensions<T extends num> on T {
  T incrementCounter() => this + 1;
}
```

Here, By specifying generic allows `incrementCounter()` to be used on each `num` subclasses that is `int` and `num`.