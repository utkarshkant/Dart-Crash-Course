// NULL SAFETY

void main() {
  int points; // can be declared but cannot be used (like below)
  // print(points);  // Error: Non-nullable variable 'points' must be assigned before it can be used.
  
  // to use the null variable use `?`
  int? score;
  print(score); // null
  
}
