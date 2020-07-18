class Location {
  String city;
  int zip;
  num lat, lng; //instance variables or member fields
  double code;
  Location(this.lat, this.lng, this.code);

//named constructor
  Location.elevate(this.lat, this.lng);
}

class ElevatedLocation extends Location {
  num elevation;
  ElevatedLocation(num lat, num lng, this.elevation)
      : super.elevate(lat, lng); //call Location() Constructor

}

class GoogleMapsLocation extends Location {
  String city;
  GoogleMapsLocation(num lat, num lng, this.city, double code)
      : super(lat, lng, code);
}

main(List<String> args) {
  // var location = new Location(200.22, 12.45);
  // print("Location = ${location.lat}, ${location.lng}");

  var elevated = new ElevatedLocation(22.56, 235.74, 90);
  print("location = ${elevated.lat}, ${elevated.lng} ${elevated.elevation}");
  elevated.city = "Jericho";

  var googleLocation = new GoogleMapsLocation(200.56, -23.55, "Philly", 20.34);

  print(
      "location = ${googleLocation.city} ${googleLocation.lat} ${googleLocation.lng} ${googleLocation.code}");
}
