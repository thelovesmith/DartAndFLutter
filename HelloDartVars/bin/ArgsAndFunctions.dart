var myOutsideVar = "outside"; // LExical Scope tutorial
//in DART if you want a variable to be accessible everywhere you must declare it outside the main method. THen it will be asseccible down the heirarchy
// Data runs inward not outward. Can't acces a variable inside a function outside of said function. //SCOPE

main(List<String> args) {
  // functions can be in th emain method or can be outside the main method

  String isLegal(int age) {
    if (age < 21) {
      return "Not legal";
    } else {
      return "is legal";
    }
  }

  // print(sayHello("Avery", "Hinds", 27));
  print(isLegal(25));
  // print(calculate(10, 12, 5, 2));
  // print(yourAge("avery-dante", "hinds"));
  print(myOutsideVar);

  void insideFunc() {
    // myoutsidevar has global scope since it is in the most outward position. Vars are accessible  inward
    print(myOutsideVar);
  }

  insideFunc();
}

// String sayHello(String name) {
//   return "Hello $name";
// }
String sayHello(String name, String lastName, int age) =>
    "Hello $name $lastName. Are you $age years old now?";

double calculate(int x, int y, int z, [int r]) =>
    (x / y * z); //the r is optional positional parameter

String yourAge(String name, String lastname, [int age]) {
  var finalResult = "$name $lastname";
  if (age == null) {
    finalResult = "$finalResult does not want to share their age";
  } else if (age != null) {
    finalResult = "$finalResult is $age";
  }
  return finalResult;
}
