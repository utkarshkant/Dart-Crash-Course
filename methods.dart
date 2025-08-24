/*
METHOD
- A function inside a class is called a method

METHOD OVERRIDING
- We can modify the same method defined from the parent class in a child class.
*/

void main() {
  var vegNoodles = MenuItem('Veg Noodles', 99.99);
  var chickenPizza = MenuItem('Chicken Pizza', 23.43);
  var vegPizza = Pizza(["mushrooms", "cheese", "chilly"], "veg volcano", 15.99);

  // call the method from class
  print(vegNoodles.insideMethod()); // Veg Noodles is available at $99.99
  print(chickenPizza.insideMethod()); // Chicken Pizza is available at $23.43
  print(
    vegPizza.insideMethod(),
  ); // veg volcano -> $15.99\nContains: mushrooms cheese chilly

  // before override
  print(chickenPizza); // Instance of 'MenuItem'
  // after override
  print(chickenPizza); // Chicken Pizza is available at $23.43
}

class MenuItem {
  String name;
  double price;

  // constructor
  MenuItem(this.name, this.price);

  // method - function inside the class
  String insideMethod() {
    return "$name is available at \$$price";
  }

  @override
  String toString() {
    return insideMethod();
  }
}

// inheritance
class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.name, super.price);
  // Pizza(this.toppings, String name, double price): super(name, price); // alternate of above

  String insideMethod() {
    var contains = 'Contains:';

    for (final t in toppings) {
      contains = '$contains $t';
    }

    return '$name -> \$$price \n$contains';
  }
}
