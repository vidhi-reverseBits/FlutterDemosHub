
// https://dart.dev/language/loops
void checkLoops() {

  print("--- Loops ---");

  /// For loop
  print("For loop");
  for(var i = 1; i <= 5; i++) {
    print("Iteration: $i");
  }

  print("For loop using in");
  var colors = ["Red", "Green", "Blue", "Purple", "White"];
  for(var color in colors) {
    print("Color is $color");
  }

  /// forEach
  print("forEach loop");
  colors.forEach((color) {
    print("Color is $color");
  });

  /// While loop
  print("While loop");
  var count = 1;
  while(count<5) {
    print("Iteration: $count");
    count++;
  }

  /// do-while loop
  print("do-while loop");
  var value = 0;
  do {
    print("Iteration: $value");
    value++;
  } while(value <= 5);
}