class Automobile {
  String name, color, type, make;
  int year;
  bool used;

  void showName() {
    print(this.name);
  }

  void showYear() {
    print(this.year);
  }

  bool isUsed() {
    var isUsed;
    if (this.used == true) {
      isUsed = true;
    } else {
      isUsed = false;
    }
    return isUsed;
  }

  void showVIN() {
    print("000000000000");
  }
}

class Ford extends Automobile {
  String model;

  void showModel() {
    print(' This is a Ford ${this.model}');
  }

  @override
  void showVIN() {
    print("2340187623401872");
  }
}

class Nissan extends Automobile {
  String model;

  void showModel() {
    print('This is a Nissan ${this.model}');
  }
}

main(List<String> args) {
  var explorer = new Ford();
  explorer.make = "Ford";
  explorer.type = "SUV";
  explorer.year = 2015;
  explorer.color = "white";
  explorer.model = "Explorer";
  explorer.name =
      "${explorer.year} ${explorer.make.toUpperCase()} ${explorer.model}";
  explorer.showModel();
  explorer.showName();
  explorer.showVIN();
  print(explorer.isUsed());

  var pathfinder = new Nissan();
  pathfinder.make = "Nissan";
  pathfinder.year = 2015;
  pathfinder.model = "Pathfinder";
  pathfinder.name =
      "${pathfinder.year} ${pathfinder.make} ${pathfinder.model} ";
  pathfinder.showModel();
  pathfinder.showName();
  pathfinder.showVIN();
}
