// Dart is a statically typed programming language, therefore, the data type of a declared variable cannot be changed later

void main() {
  var name = 'mario';
  print(name);  // mario
  // name = 123; // Error - data type of a `var` variable cannot be changed once declared
  name = 'luigi';
  print(name);  // luigi

  final age = 25;
  // age = 26;  // Error - value of a `final` variable cannot be changed once declared
  print(age);  // 25

  const isOpen = true;
  print(isOpen);  // true
  // isOpen = false; // Error - value of a `const` variable cannot be changed once declared

  /* 
  `final` vs `const`
  - `final` is a runtime constant variable, `const` is a compile-time constant variable
  - typically, we use final when we are unsure what the value will be at compile time
  */
}
