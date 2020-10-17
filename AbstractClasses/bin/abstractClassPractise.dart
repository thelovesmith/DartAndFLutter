//????
abstract class User {
  void signUp();
  void logIn(); // an abstract method
  void logOut(); //checking ssh
}

//????
abstract class IsTeaching {
  void isSearchingForNovice(); //abstract method
}

//????
abstract class IsLearning {
  void isSearchingForMentor(); //abstract method
}

//!
class Apprentice implements User {
  String firstName, lastName, profession, iD, state;
  Apprentice(
      this.firstName, this.lastName, this.profession, this.iD, this.state);

  @override
  void signUp() {
    print("Apprentice $profession $firstName $lastName signs up");
  }

  @override
  void logIn() {
    print("Apprentice $profession $firstName $lastName logged in");
  }

  @override
  void logOut() {
    print("$firstName $lastName the $profession logged out");
  }
}

//!
class Mentor implements User {
  String firstName, lastName, profession;
  Mentor(this.firstName, this.lastName, this.profession);

  @override
  void logIn() {
    print("$firstName $lastName logged in!");
  }

  @override
  void signUp() {
    print("$firstName $lastName signed up!");
  }

  @override
  String toString() => "$firstName $lastName $profession";

  @override
  void logOut() {
    print("$firstName $lastName the $profession logged out");
  }
  //For some reason this method lets you just print the whole objecrt
}

//!
class Novice extends Apprentice implements IsLearning {
  Novice(String firstName, String lastName, String profession, String iD,
      String state)
      : super(firstName, lastName, profession, iD, state);

  @override
  void isSearchingForMentor() {
    print("I, $firstName $lastName, am searching for a  Carpenter Mentor");
  }
}

//!
class Carpenter extends Mentor implements IsTeaching {
  Carpenter(String firstName, String lastName, String profession)
      : super(firstName, lastName,
            profession); // here you need these super constructors
  @override
  void isSearchingForNovice() {
    print("I am searching for a Apprentice");
  }
}

//!
class Plumber extends Mentor implements IsTeaching {
  Plumber(String firstname, String lastName, String profession)
      : super(firstname, lastName, profession);
  @override
  void isSearchingForNovice() {
    print('I am searching for a Apprentice');
  }
}

//!
class Electrician extends Mentor implements IsTeaching {
  Electrician(String firstName, String lastName, String profession)
      : super(firstName, lastName, profession);
  @override
  void isSearchingForNovice() {
    print("I am searching for a Apprentice");
  }
}

main(List<String> args) {
  // var carpenter = new Carpenter("John", "Smith", "Carpenter");
  // print(carpenter);
  // var mentor = new Mentor("James", "Smith", "Plumber");
  // // mentor.logIn();
  // mentor.signUp();
  // var jazzyElectric = new Electrician("Johnny", "James", "Electrician");
  // print(jazzyElectric);
  // jazzyElectric.signUp();
  // var avery = new Novice("Avery-Dante", "Hinds", "Carpenter");
  // avery.signUp();
  // avery.logIn();

  // var dante = new Novice("Dante", "Ciao", "Carpenter", "123awer");
  // dante.isSearchingForMentor();
  // var chris = new Carpenter("Christopher", "James", "Carpenter");
  // chris.isSearchingForNovice();
  var abe = new Apprentice("abe", "john", "unknown", "123kjh", "PA");
  print(abe.iD);
  print(abe.state);
}
