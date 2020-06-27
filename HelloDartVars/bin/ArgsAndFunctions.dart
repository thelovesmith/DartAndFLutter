var myOutsideVar = "outside"; // LExical Scope tutorial 

main(List<String> args) {
  // print(sayHello("Avery", "Hinds", 27));
  // print(isLegal(25));
  // print(calculate(10, 12, 5, 2));
  // print(yourAge("avery-dante", "hinds"));
  print(myOutsideVar);
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

double calculate(int x, int y, int z, [int r]) =>
    (x / y * z); //the r is optional positional parameter

String yourAge(String name, String lastname, [int age]) {
  var finalResult = "$name $lastname";
  if (age == null) {
    finalResult = "$finalResult does not want to share their age";
  } else if (age != null){
    finalResult = "$finalResult is $age";
  }
  return finalResult;
}
