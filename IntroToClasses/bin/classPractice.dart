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
  bool didOrgasm() {
    return true;
  }

  String createNotes() => "$notes";
}

main(List<String> args) {
  // print("I am Avery");

  var jenny =
      //new Date(); // here we actually create an instance of an object with the type Date

      new Date("Jenny", 27, true, false, "Female",
          "She enjoys talkign about work", "Leo", "Pisces", "gemini");
 
  jenny.printName();
  print(jenny.createNotes());

var tine = new Date("Tina", 28, true, false, "Female", "She can read my mind and enjoys deep conversation", "Sagittarius");
}
