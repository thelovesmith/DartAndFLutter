class Location {
  num lat, lng; //instance variables or member fields

  Location(this.lat, this.lng);
}

class ElevatedLoction extends Location {
  ElevatedLoction(num lat, num lng)
      : super(lat, lng); //call Location() Constructor

}

main(List<String> args) {
  var elevated = new ElevatedLoction(22.56, 235.74);
  print("location = ${elevated.lat}, ${elevated.lng}");
}
