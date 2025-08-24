/*
CLASSES
- Classes are used to create objects with custom properties
- Example: All the items in a menu will have the same properties, like, Name, Description, Price, etc.

INHERITANCE
- One class gets all the properties of the parent class
- Example: below, the class `Pizza` gets all the properties of the class `MenuItem`
*/
void main() {
  var vegNoodles = MenuItem('Veg Noodles', 99.99);
  var chickenPizza = MenuItem('Chicken Pizza', 23.43);
  var vegPizza = Pizza(["mushrooms", "cheese", "chilly"], "veg volcano", 15.99);

  print(vegNoodles.name); // Veg Noodles
  print(vegNoodles.price); // 99.99
  print(chickenPizza.name); // Chicken Pizza
  print(chickenPizza.price); // 23.43
  print(vegPizza.toppings); // [mushrooms, cheese, chilly]
  print(vegPizza.name); // veg volcano
  print(vegPizza.price); // 15.99

  // call the method from class
  print(vegNoodles.insideMethod()); // Veg Noodles is available at $99.99
  print(chickenPizza.insideMethod()); // Chicken Pizza is available at $23.43
}

class MenuItem {
  String name;
  double price;

  // constructor
  MenuItem(this.name, this.price);

  // method inside the class
  String insideMethod() {
    return "$name is available at \$$price";
  }
}

// inheritance
class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.name, super.price);
  // Pizza(this.toppings, String name, double price): super(name, price); // alternate of above
}
