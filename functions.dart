/*
FUNCTIONS
- We declare the type of value that a function will return before declaring the name of the function
- The `main` function returns nothing, therefore, it has the `void` prefix attached to it
- The values passed within the function are called 'Arguments' or 'Parameters'
*/

// `main` function
void main() {
  final greeting = greet("Mario", 25);
  print(greeting); // Hi, my name is Mario and I am 25 years old.

}

// create a function outside the `main` function, which can be invoked inside the `main` function
String greet(String name, int age) {
  return "Hi, my name is $name and I am $age years old.";
}

/*
NOTE
- Not declaring the return type of the function OR the type of the input parameters also works, as it assigns the type dynamically
- Example:
```
greet(name, age) {
  return "Hi, my name is $name and I am $age years old.";
}
```
*/
