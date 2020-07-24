class Farm {
  //creating a new type/class
  String name;
  Farm(this.name);
}

var happyBrook = new Farm("Happy brook");
var shadyMaple = new Farm("Shady Maple");
var ashyBrook = new Farm("Ashy Brook");

var farmList = List<Farm>(); //creating a list of the new class

var list = [12, 43, 55, 67, 18]; //one way to creae=te a list
var onlyStrings =
    List<String>(); //another way to create a list with type string

main(List<String> args) {
  onlyStrings = ["hey", "hi"];
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0)
      print("${list[i]} is a multiple of 2");
    else
      print('${list[i]} is not a mulptile of 2');
  }
  farmList.add(happyBrook); //adding the class to the list
  farmList.add(shadyMaple);
  farmList.add(ashyBrook);
  for (var i = 0; i < farmList.length; i++) {
    print(farmList[i].name);
  }
}
