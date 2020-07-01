class Date {
  // Instance variables and ember variables
  String name;
  int age;
  bool orgasm;
  bool protected;
  String sex;
  String sun;
  String moon;
  String rising;
  String notes;
}

main(List<String> args) {
  print("I am Avery");

  var date = new Date(); // here we actually create an instance of the object
  date.name = "Jenny";
  date.age = 26;
  print(date.name);
  print(date);
}
