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
  String notes = "She enjoys happy hour and byob dates"; //initialize this variable 
}

main(List<String> args) {
  print("I am Avery");

  var date = new Date(); // here we actually create an instance of an object with the type Date

  date.name = "Jenny";
  date.age = 26;
  date.notes = "She enjoys happy hour and korean bbq";
  date.sex = "female";

  print(date.name); // dot access operator
  print(date.notes);
  print(date.sex);
}
