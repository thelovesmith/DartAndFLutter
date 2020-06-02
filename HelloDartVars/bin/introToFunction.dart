import "package:HelloDartVars/HelloDartVars.dart" as HelloDartVars;

main(List<String> args) {
  print('Hello Wolrd: ${HelloDartVars.calculate()}!');
  myfunction();
}

myfunction() {
  num x = 2;
  num y = 3;
  print("I am only  ${(x + y)} years old");
}
