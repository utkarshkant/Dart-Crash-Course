/* 
SETS
- similar to lists but does not allow duplicates
- element are declared within `{}`
- they are not ordered
*/

void main() {
  var studentNames = {'manoj', 'pinki', 'ramesh', 'imran', 'mario'};
  print(studentNames); // {manoj, pinki, ramesh, imran, mario}

  // var studentNames2 = {'manoj', 'pinki', 'ramesh', 'imran', 'mario', 'pinki', 'ramesh'};
  // print(studentNames2); // {manoj, pinki, ramesh, imran, mario} - duplicates are removed

  // type decalaration of Set
  Set<String> names = {'manoj', 'pinki', 'ramesh', 'imran', 'mario'};
  print(names);

  // add a new element in Set
  names.add("Ross");
  print(names); // {manoj, pinki, ramesh, imran, mario, Ross}

  names.add('mario');
  print(
    names,
  ); // {manoj, pinki, ramesh, imran, mario, Ross} - duplicate entry was not added

  // remove an element from the set
  names.remove('ross');
  print(names); // {manoj, pinki, ramesh, imran, mario, Ross} - `Ross` was not removed as Dart is type sensitive
  names.remove('Ross');
  print(names); // {manoj, pinki, ramesh, imran, mario}

  // number of elements in a set
  print(names.length);  // 5
}
