

main(List<String> arguments) { // entry point for execution
  print("Hello World");
  //Variable = spot in memory.  Or just a bucket to hold a value.
  //Type??
   /*
      String
      Number (integers and doubles)
      Boolean - 1 or 0, true or false
      lists
      maps
      ....

      integers are numbers without a decimal point.  1,2, 3, 5, 10 etc
      doubles do have a decimal point.  1.1, 0.2...
*/
//Variables
  var country = "Africa"; //implicit; generic; fluid; 
  String city = "Philadelphia"; //explicit

//Numbers
  num fingers = 5; //
  int toes = 5; // no decimals
  double myAge = 27.0; //decimals
  double net = 1000.45;

  // print(myAge * net);

//Booleans

  bool isTrue = true;
  bool isFalse = false;

  // print(isTrue);



/*
      Const and final keywords
      const = we use this keyword when we want the value/variable to be a constant
      at COMPILE-TIME.
      final - if we want a variable/value to always be constant = never changes at anytime

      Operators = Arithmetic ( -, +, *, /, % (remainder) = modulo
      Equality and Relational Operators ( ==, !=, >, <, >=, <=)
      as, is and is!

      Logical Operators ( !, ||, &&)
      OR(||) -> Only one "side" needs to be True for the whole expression to be true
      AND (&&) The expression is true, if both sides are true

      Remainder = "what remains from a division operation"
      4/3 = remainder?
    */

    // var  island = "Jamaica";
    // var pi = 3.14;
    // pi = 5; // We don' twant this so use Final

    const pi = 3.14
    pi = 5; //Doesnt work






   int number = 34;
   int numberTwo = 2;

   double pi = 3.14;
   double gravity = 9.8;

   //for loop
   var fruit = "Mango";
  for(var i = 0; i < 10; i++) {
    if(i % 3 == 0) {
      print("$fruit $i");

    }

  }


// Switch case
var age = 18;

  switch (age) {
    case 19:
      print("Old enough");
      break;
    case 20:
      print("Still good");
      break;
    case 89:
      print("Too old!");
      break;

      default:
        print("Default $age");
  }





 // while and do while loop


//  do {
//    print("Hello World");
//
//  }while( number < 34);

//  while(true) { //infinite loop
//    if(number >= 32)  print("Going..."); break;
//
//
//
//  }

















//
//   if( !(number != 100) && number <= 100 ) { //False AND True
//
//     print("Not a hundred!");
//   }else {
//     print("Yess!");
//
//   }


//   if( !(number != 100) || number >= 100 ) { //False Or True
//
//     print("Not a hundred!");
//   }else {
//     print("Yess!");
//
//   }






















   //var result = 4 / 2;

   //print(pi <= gravity);

  // print(number is! bool);



   //If statement
//  if(number != 34) {
//     print("If true, this will run!");
//
//  }else {
//    print("Else running!");
//  }








   //print(4%3);
















//   String name = "James"; // James Bond is 45 years old.
//   String lastName = "Bond";
//   int age = 45;
//
//
//
//   print("$name $lastName is $age");
//   print("Hello there $name ${lastName.toUpperCase()}");















   
//   bool isTrue = true;
//   bool isFalse = false;
//
//   print(isTrue);
   
   
   
   
   
   
   
   
   

//   int age = 13;
//   double number = 23.34;
//
//
//   print(number);
















//  var country;
//
//  String name; // explicit
//
//  name = "Paulo";
//  country = "Japan";
//  country = 23;
//
//  print(country);
}


