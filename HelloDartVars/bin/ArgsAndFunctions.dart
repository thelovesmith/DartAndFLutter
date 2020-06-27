main(List<String> args) {
  print(sayHello("Avery", "Hinds", 27));
  print(isLegal(25));
}

// String sayHello(String name) {
//   return "Hello $name";
// }
String sayHello(String name, String lastName, int age) =>
    "Hello $name $lastName. Are you $age years old now?";

String isLegal(int age) {
  if (age < 21) {
    return "Not legal";
  } else {
    return "is legal";
  }
}
