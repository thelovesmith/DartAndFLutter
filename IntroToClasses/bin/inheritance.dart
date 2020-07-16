class Person {
  String name, lastname, nationality;
  int age;

  void showName() {
    print(this.name);
  }
}

//! Bonnie is a child of Person and inherits everythign from Personbut also has its own unique attributes
class Bonnie extends Person {
  String profession;

  void showProfession() {
    print(profession);
  }
}

//! Avery extends person as well but has its own attributes
class Avery extends Person {
  bool isCoder;
}

main(List<String> args) {
  var avery = new Avery();
  avery.name = 'avery';
  avery.showName();
  avery.isCoder = true;
  print(avery.isCoder);

  var bonnie = new Bonnie();
  bonnie.name = 'bonnie';
  bonnie.profession = "doctor";
  bonnie.showName();
  bonnie.showProfession();
}
