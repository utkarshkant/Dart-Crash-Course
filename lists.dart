/*
LISTS
- contained inside a `[]`
- can contain elements with different data types
*/
void main() {
  
  // decalare a list with elements records inside `[]`
  var scores = [50, 60, 23, 98];
  print(scores);  // [50, 60, 23, 98]
  
  // a list can contain elements of different data types
  var randomList = [23, 'apple ', 78.9, false, "goat"];
  print(randomList);  // [23, apple , 78.9, false, goat]
  
  // you can fix the data types of elements inside a list
  List<int> marks = [20, 30, 40, 66, 78, 92, 23];
  print(marks); // [20, 30, 40, 66, 78, 92, 23]
  
  // List<int> marks2 = ['asdasd', 23, 343, 56]; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  
  // call elements of a list by their index
  print("Complete list: $marks"); // Complete list: [20, 30, 40, 66, 78, 92, 23]
  print("First element: ${marks[0]}");  // First element: 20
  print("Second element: ${marks[1]}"); // Second element: 30
  print("Sixth element: ${marks[5]}");  // Sixth element: 92
  
  // change value of an existing element
  marks[0] = 25;
  print("First element after modification: ${marks[0]}"); // First element after modification: 25
  
  // marks[0] = true;  // Error: A value of type 'bool' can't be assigned to a variable of type 'int'.
  
  // add new values to a list
  marks.add(100);
  print("After addition of new element: $marks"); // After addition of new element: [25, 30, 40, 66, 78, 92, 23, 100]
  
  // remove element from a list
  marks.remove(66);
  print("After removal of an element: $marks"); // After removal of an element: [25, 30, 40, 78, 92, 23, 100]
  // NOTE: If there are two elements with the same value, the first element will be removed.
  
  // remove last element
  marks.removeLast();
  print("After removing last element: $marks"); // After removing last element: [25, 30, 40, 78, 92, 23]
  
  // number of items in a list
  print(marks.length);  // 6
  
  // find element by index
  print("Index of `40`: ${marks.indexOf(40)}");
  
  // shuffle the order of the elements in a list
  print("List before shuffle: $marks"); // List before shuffle: [25, 30, 40, 78, 92, 23]
  marks.shuffle();
  print("List after shuffle: ${marks}");  // List after shuffle: [92, 23, 40, 30, 25, 78] - this will change with every run
}
