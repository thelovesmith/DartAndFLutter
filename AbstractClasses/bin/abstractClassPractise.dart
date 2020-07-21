abstract class User {
  String firstName, lastName;
  void logIn(); // an abstract method
  void signUp() {
    print("user signs up");
  }
}

abstract class IsTeaching {
  void isSearchingForApprentice(); //abstaract method
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

class Mentor implements User {
  String profession;
  Mentor(String firstName, String lastName, this.profession);

  @override
  String firstName;

  @override
  String lastName;

  @override
  void logIn() {
    print("$firstName $lastName logged in!");
  }

  @override
  void signUp() {
    print("$firstName $lastName signs up!");
  }
}

class Apprentice implements User {
  String profession;
  Apprentice(String firstName, String lastName, this.profession);
  @override
  String firstName;

  @override
  String lastName;

  @override
  void signUp() {
    print("Apprentice $firstName $lastName signs up");
  }

  @override
  void logIn() {
    print("the Apprentice $firstName $lastName logged in");
  }
}

main(List<String> args) {
  //Todo create an instance of the carpenter class
  var mentor = new Mentor("James", "Smith", "Plumber");
  mentor.logIn();
  mentor.signUp();
}
