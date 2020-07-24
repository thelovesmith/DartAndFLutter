main(List<String> arguments) {
  var farms = new Map();
  farms = {
    1: "Shady Brook",
    2: "Hershire Farms",
    3: "Hilltop Creamery",
  };
  var users = {
    "first": "James",
    "sec": "Julio",
    "three": "Carmen",
  };
  farms.forEach((key, value) {
    print("ID: $key NAME: $value");
  });

  var keys = users.keys;
  var vals = users.values;
  print(vals);
  print(keys);
}
