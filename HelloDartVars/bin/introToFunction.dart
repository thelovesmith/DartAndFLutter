import "package:HelloDartVars/HelloDartVars.dart" as HelloDartVars;

main(List<String> args) {
  print('Hello Wolrd: ${HelloDartVars.calculate()}!');
  myfunction();
  randomFunciton();
}

// Compartmentalizing our code
// these functions are void 
myfunction() {
  num x = 2;
  num y = 3;
  print("I am only  ${(x + y)} years old");
  myName();
}
// this is a void function
myName() {
  print('Avert-Dante');
  String name;
  name = "Avery-Dante";
  if (name.contains("A")) {
    print("hoorah");
  }
}

randomFunciton() {
  num x = 2;
  while (x == 2) {
    print("yessirski");
    break;
  }
  ;
}
