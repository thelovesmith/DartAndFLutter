//! creating the nblue print for a class object
class Date {
  //! Instance variables and member variables
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
  // initialized vars have implicit getters and setters

// ! Constructors

// Syntactic Sugar Constructor (cinstructor name  must be the same as th ename of the class)
  Date(this.name, this.age, this.orgasm, this.protected, this.sex, this.sun,
      this.moon, this.rising, this.notes);

// Named constructor this lets you set values for vars to a named constructir that you can call later
  Date.initialize() {
    name = "Ashlee";
    age = 33;
    orgasm = false;
    //can initialize any instance variable we want
  }
  Date.akira() {
    name = "akira";
    age = 21;
  }

//! Getters and Setters
// These are implicit when you initialize a variable however its good to know

  String get getname => name;
  set setname(String value) => name = value;

// explicit constructor //
  // Date(String name, int age, bool orgasm, bool protected, String sex,
  //     String sun, String moon, String rising, String notes) {
  //   this.name = name;
  //   this.age = age;
  //   this.orgasm = orgasm;
  //   this.protected = protected;
  //   this.sex = sex;
  //   this.notes = notes;
  //   this.sun = sun;
  //   this.moon = moon;
  //   this.rising = rising;
  // }
  //! Methods or functions

  void printName() {
    print('$name');
  }

  // void setSex() {}
  void didOrgasm() {
    print('$orgasm');
  }

  String createNotes() => "$notes";
}

main(List<String> args) {
  // print("I am Avery");

  var jenny =
      //new Date(); // here we actually create an instance of an object with the type Date

      new Date("Jenny", 27, true, false, "Female",
          "She enjoys talkign about work", "Leo", "Pisces", "gemini");

  var ashlee = new Date.initialize(); //using that pervious named constructor
  var akira = new Date.akira();
  akira.printName();
  ////// setters and getters //////
  akira.setname = "akira ayato";
  print(akira.getname);
  akira.name = "Akira Hayato";
  print(akira.name);
  /////
  print(ashlee.name);
  jenny.printName();
  jenny.didOrgasm();
  print(jenny.createNotes());
}
