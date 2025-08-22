void main() {
  // string interpolation with $
  var name = 'Mario';
  print("My name is " + name + ".");  // My name is Mario.
  var age = 25;
  print("My age is ${age}."); // My age is 25.
  print("$name is $age years old.");  // Mario is 25 years old.
  print("In 5 years from now, $name will be ${age + 5} years old.");  // In 5 years from now, Mario will be 30 years old.

  // mathematical operators
  print(age);   // 25
  print(age + 15);  // 40
  print(age - 12);  // 13
  print(age * 2);   // 50
  print(age / 5);   // 5
  print(age % 3);   // 1
  
}
