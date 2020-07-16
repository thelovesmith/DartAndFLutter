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
}

class Ford extends Automobile {
  String model;

  void showModel() {
    print(' This is a Ford ${this.model}');
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
  print(explorer.isUsed());

  var pathfinder = new Nissan();
  pathfinder.model = "Pathfinder";
  pathfinder.showModel();
}
