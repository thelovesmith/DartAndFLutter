abstract class User {
  void logIn(); // an abstract method
  void signUp() {
    print("user signs up");
  }

  void logOut();
}

abstract class IsTeaching {
  void isSearchingForApprentice(); //abstract method
}

abstract class IsLearning {
  void isSearchingForMentor(); //abstract method
}

class Carpenter extends Mentor implements IsTeaching {
  Carpenter(String firstName, String lastName, String profession)
      : super(firstName, lastName,
            profession); // here you need thee super constructor
  @override
  void isSearchingForApprentice() {
    print("I am searching for an apprentice");
  }
}

class Plumber extends Mentor implements IsTeaching {
  Plumber(String firstname, String lastName, String profession)
      : super(firstname, lastName, profession);
  @override
  void isSearchingForApprentice() {
    print('I am searching for an apprentice');
  }
}

class Electrician extends Mentor implements IsTeaching {
  Electrician(String firstName, String lastName, String profession)
      : super(firstName, lastName, profession);
  @override
  void isSearchingForApprentice() {
    print("I am searching for an apprentice");
  }
}

class Mentor implements User {
  String firstName, lastName, profession;
  Mentor(this.firstName, this.lastName, this.profession);

  @override
  void logIn() {
    print("$firstName $lastName logged in!");
  }

  @override
  void signUp() {
    print("$firstName $lastName signs up!");
  }

  @override
  String toString() => "$firstName $lastName $profession";

  @override
  void logOut() {
    print("$firstName $lastName the $profession logged out");
  }
  //For some reason this method lets you just print the whole objecrt
}

class Apprentice implements User {
  String firstName, lastName, profession;
  Apprentice(this.firstName, this.lastName, this.profession);

  @override
  void signUp() {
    print("Apprentice $firstName $lastName signs up");
  }

  @override
  void logIn() {
    print("the Apprentice $firstName $lastName logged in");
  }

  @override
  void logOut() {
    print("$firstName $lastName the $profession logged out");
  }
}

main(List<String> args) {
  var carpenter = new Carpenter("John", "Smith", "Carpenter");
  print(carpenter);
  var mentor = new Mentor("James", "Smith", "Plumber");
  // mentor.logIn();
  // mentor.signUp();
  print(mentor);
}
