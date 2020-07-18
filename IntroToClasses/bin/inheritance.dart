class Person {
  String name, lastname, nationality;
  int age;

  void showName() {
    print(this.name);
  }

  void sayHello() {
    print("Hello");
  }

  void showNationality() {
    print('American');
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
  @override
  void sayHello() {
    print("Ola");
  }

  @override
  void showNationality() {
    print('Trinidadian');
  }
}

main(List<String> args) {
  var avery = new Avery();
  avery.name = 'avery';
  avery.showName();
  avery.isCoder = true;
  avery.sayHello();
  avery.showNationality();
  print(avery.isCoder);
  print("______________");
  var bonnie = new Bonnie();
  bonnie.name = 'bonnie';
  bonnie.profession = "doctor";
  bonnie.showName();
  bonnie.showProfession();
  bonnie.sayHello();
  bonnie.showNationality();
}
