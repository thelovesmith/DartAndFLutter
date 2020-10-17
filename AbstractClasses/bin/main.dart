//! Interfaces and Abstract classes
// Multiple inheritance is not allowed, WHY??? Research
//A class can not inherit from multiple parent classes
// a solution is an interface or  abstract class

//? Interfaces: Common functionality to unrelated classes
// Classes can extend a parent class but also implment and interface an inherit properties and methods from both

//? Abstract Classes: Not concrete, an idea, a concept, generic class
// Pretty much the upper most class in the heirarchy.
// I.E. Animal -> Felines -> Cat //Animal is abstract
// I.E. Animal -> Human -> Actor //Animal is Abstract

abstract class Animal {
  void breathe(); // an abstract method

  void makeNoise() {
    print("Making animal noises!");
  }
}

abstract class IsFunny {
  void makePeopleLaugh(); //abstract method
}

class TVShow implements IsFunny {
  String name;

  @override
  void makePeopleLaugh() {
    print("TV show is funny and makes people laugh!");
  }
}

class Comedian extends Person implements IsFunny {
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh() {
    print("Comedian making people laugh!");
  }
}

class Person implements Animal {
  String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breathe() {
    print("Person breathing through nostrils!");
  }

  @override
  void makeNoise() {
    print("Person shouting!");
  }

  @override
  String toString() => "$name $nationality";
}

main(List<String> arguments) {
  var jenny = new Person("Jenny", "Jamaican");
  print(jenny);
}
