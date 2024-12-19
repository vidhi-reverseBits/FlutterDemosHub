import 'package:flutter_demo/dart_language/datatype_demo.dart';

void checkPatterns() {
  // Destructuring Pattern
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print("Sum = ${a + b + c}");

  // Variable Assignment Pattern
  var (x, y) = ("left", "right");
  (y, x) = (x, y);
  print("value of b: $y and value a: $x");
}
