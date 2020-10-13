abstract class User {
  void logIn(); // an abstract method
  void signUp() {
    print("user signs up");
  }

  void logOut(); //checking ssh
}

class Novice implements User {
  String firstName, lastName, profession;
  Novice(this.firstName, this.lastName, this.profession);

  @override
  void signUp() {
    print("Novice $profession $firstName $lastName signs up");
  }

  @override
  void logIn() {
    print("Novice $profession $firstName $lastName logged in");
  }

  @override
  void logOut() {
    print("$firstName $lastName the $profession logged out");
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

abstract class IsTeaching {
  void isSearchingForNovice(); //abstract method
}

abstract class IsLearning {
  void isSearchingForMentor(); //abstract method
}

class NoviceCarpenter extends Novice implements IsLearning {
  NoviceCarpenter(String firstName, String lastName, String profession)
      : super(firstName, lastName, profession);

  @override
  void isSearchingForMentor() {
    print("I am searching for a  Carpenter Mentor");
  }
}

class Carpenter extends Mentor implements IsTeaching {
  Carpenter(String firstName, String lastName, String profession)
      : super(firstName, lastName,
            profession); // here you need these super constructors
  @override
  void isSearchingForNovice() {
    print("I am searching for a Novice");
  }
}

class Plumber extends Mentor implements IsTeaching {
  Plumber(String firstname, String lastName, String profession)
      : super(firstname, lastName, profession);
  @override
  void isSearchingForNovice() {
    print('I am searching for a Novice');
  }
}

class Electrician extends Mentor implements IsTeaching {
  Electrician(String firstName, String lastName, String profession)
      : super(firstName, lastName, profession);
  @override
  void isSearchingForNovice() {
    print("I am searching for a Novice");
  }
}

main(List<String> args) {
  var carpenter = new Carpenter("John", "Smith", "Carpenter");
  print(carpenter);
  var mentor = new Mentor("James", "Smith", "Plumber");
  // mentor.logIn();
  mentor.signUp();
  var jazzyElectric = new Electrician("Johnny", "James", "Electrician");
  print(jazzyElectric);
  jazzyElectric.signUp();
  var avery = new NoviceCarpenter("Avery-Dante", "Hinds", "Carpenter");
  avery.signUp();
  avery.logIn();
}
