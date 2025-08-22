// VARIABLES - TYPE ANNOTATIONS

void main() {
  String name = "mario";
  print(name); // mario

  // String age = 25;  // Error: value of type 'int' cannot be assigned to a variable of type 'String'

  int age = 25;
  print(age); // 25
  age =
      34; // value of a type declared variable can be changed, but the type cannot be changed once declared
  print(age); // 34

  bool isOpen = true;
  print(isOpen); // true

  double avgRating = 8.9;
  print(avgRating); // 8.9
  avgRating =
      9; // value can be `int` in a `double` type variable, but the opposite is not true
  print(avgRating); // 9

  // Type annotated variables behave like `var` variables. However, if we want them to behave as `const` or `final`, then we can simply declare that.

  const String surname = "James";
  print("My name is $name $surname."); // My name is mario James.
  // surname = "Page"; // Error: Cannot assign a new value to a `const` or `final` variable.
  
  // Mostly we use `var` to declare the variables as Dart detects the correct datatype, unless we want to be very specific. Like `double`, etc.
  
  
}
