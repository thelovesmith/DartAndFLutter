//! creating the nblue print for a class object
class Date {
  //! Instance variables and ember variables
  String name;
  int age;
  bool orgasm;
  bool protected;
  String sex;
  String sun;
  String moon;
  String rising;
  String notes =
      "She enjoys happy hour and byob dates"; //initialize this variable

// ! Constructors
// explicit constructor //
  Date(String name, int age, bool orgasm, bool protected, String sex,
      String sun, String moon, String rising, String notes) {
    this.name = name;
    this.age = age;
    this.orgasm = orgasm;
    this.protected = protected;
    this.sex = sex;
    this.notes = notes;
    this.sun = sun;
    this.moon = moon;
    this.rising = rising;
  }
  //! Methods or functions

  void printName() {
    print('$name');
  }

  // void setSex() {}
  bool isOrgasm() {
    return true;
  }

  String createNotes() => "$notes";
}

main(List<String> args) {
  // print("I am Avery");

  var date =
      //new Date(); // here we actually create an instance of an object with the type Date

      new Date("Jenny", 27, true, false, "Female",
          "She enjoys talkign about work", "Leo", "Pisces", "gemini");
  // date.name = "Jenny";
  // date.age = 26;
  // date.notes = "She enjoys happy hour and korean bbq";
  // date.sex = "female";
  // print(date.name); // dot access operator
  // print(date.notes);
  // print(date.sex);
  date.printName();
  print(date.createNotes());
}
