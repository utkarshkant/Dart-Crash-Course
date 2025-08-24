/*
NAMED PARAMETERS (POSITION ARGUMENTS)
- The arguments are passed within `{}`.
- The argument with `?` is optional. The function can be executed without passing this parameter.
- The argument with `required` is a mandatory requirement for the function to be executed.
- These parameters are passed as `key: value` pairs while executing the function.
*/

// `main` function
void main() {

  final intro1 = introduce(personName: "Mohan", personAge: 14);
  print(intro1); // Hi, my name is Mohan and I am 14 years old.

  final intro2 = introduce(personAge: 15);
  print(intro2); // Hi, my name is null and I am 15 years old.
}

String introduce({String? personName, required int personAge}) {
  return "Hi, my name is $personName and I am $personAge years old.";
}
