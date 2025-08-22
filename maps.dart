/*
MAPS
- Key-value pairs
- declared within `{}`
*/

void main() {
  var planets1 = {}; // creates an empty `map` and not an empty `set`
  print(planets1); // {}

  // the datatype of keys and values is dynamically defined if not declared
  var planets2 = {1: "mercury", "second": "venus"};
  print(planets2); // {1: mercury, second: venus}
  print(planets2[1]); // mercury
  print(planets2['second']); // venus

  // you can also define the data types of key and value by declaring it
  Map<int, String> planets = {
    1: "mercury",
    2: "venus",
    3: "earth",
    4: "mars",
    5: "jupiter",
  };
  print(planets); // {1: mercury, 2: venus, 3: earth, 4: mars, 5: jupiter}
  print(planets[3]); // earth

  // update an existing value
  planets[3] = "dharti";
  print(planets); // {1: mercury, 2: venus, 3: dharti, 4: mars, 5: jupiter}

  // add a new key-value pair
  planets[6] = 'uranus';
  print(
    planets,
  ); // {1: mercury, 2: venus, 3: dharti, 4: mars, 5: jupiter, 6: uranus}

  // check if a key exists in a Map
  print(planets.containsKey(4)); // true
  print(planets.containsKey(9)); // false

  // check if a value exists in a Map
  print(planets.containsValue('dharti')); // true
  print(planets.containsValue('earth')); // false

  // remove a value by passing the key
  planets.remove(2);
  print(planets); // {1: mercury, 3: dharti, 4: mars, 5: jupiter, 6: uranus}

  // other properties
  print(planets.keys); // (1, 3, 4, 5, 6)
  print(planets.values); // (mercury, dharti, mars, jupiter, uranus)
}
