//  Functions can return things, they only return the Type of object that is stated before the function name. If a function has no name in front of it, then it is "void" and does not return anything but just calculates what is inside of it. But there are times that we actually want our functions to return something.

main(List<String> args) {
  // unoFunction();
  var name = showName();
  print(name);
  print(showName());
  print("hello my name is ${showName()} i am ${showAge()} years old");
}

// this function would be void since it has no name
// unoFunction() {
//   print("function");
// }

// this function must return a string
String showName() {
  //has to return a string
  return "Avery";
}

int showAge() {
  return 27;
}
