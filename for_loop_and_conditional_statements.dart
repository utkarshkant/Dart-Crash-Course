/*
FOR LOOP
- The syntax is :
```
for (<condition>) {<logic execution>}
```
- Execute the logic till the condition is met
*/

/*
CONTROL FLOW
1. `if` conditional statements
- Execute the logic only `if` the condition is met.
- Otherwise execute the logic within `else if` and `else` blocks.
- There can be multiple `else if` blocks.

2. `where` conditional statement
- alternate way of implementing the `if` condition
*/

void main() {
  /* Example 1
  
  for (int i=0; i < 5; i++) {
    print(i);
  }   // 0 \n 1 \n 2 \n 3 \n 4
  */

  /* Example 2
  
  List<int> scores = [50, 32, 14, 67, 89, 93, 100];
  for (int score in scores) {
    print(score);   // 50 \n 32 \n 14 \n 67 \n 89 \n 93 \n 100
  }
  */

  /* Example 3
  
  List<int> scores = [89, 50, 32, 14, 67, 93, 100];
  for (int score in scores) {
    if (score > 50) {
      print(score);
    } else if (score == 50) {
      print("Mid point");
    } else {
      print("lower than 50");
    }
  }
    /*
    Output:
    89
    Mid point
    score is lower than 50
    score is lower than 50
    67
    93
    100
    */
  */
  
  // Example 4
  
  List<int> scores = [50, 32, 14, 67, 89, 93, 100];
  for (int score in scores.where((s) => s > 50)) {
    print(score);
  }   // 67 \n 89 \n 93 \n 100

  
}
