/*
GENERICS
- allows the objects to extend the properties and methods of the class
*/

void main() {
  var vegNoodles = MenuItem('Veg Noodles', 99.99);
  var chickenPizza = MenuItem('Chicken Pizza', 23.43);
  var vegPizza = Pizza(["mushrooms", "cheese", "chilly"], "veg volcano", 15.99);
  var roast = MenuItem('roast dinner', 15.59);
  var kebab = MenuItem('kebab', 4.49);

  // generics example
  var foods = Collection<MenuItem>('Menu Items', [
    vegNoodles,
    chickenPizza,
    vegPizza,
    roast,
    kebab,
  ]);
  var random = foods.randomItem();
  print(random);
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

  String insideMethod() {
    var contains = 'Contains:';

    for (final t in toppings) {
      contains = '$contains $t';
    }

    return '$name -> \$$price \n$contains';
  }
}

// generic class - `<T>` denotes the generic type
class Collection<T> {
  String collectionName;
  List<T> data;

  Collection(this.collectionName, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}
