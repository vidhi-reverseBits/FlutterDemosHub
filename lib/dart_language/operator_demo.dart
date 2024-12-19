// https://dart.dev/language/operators
import 'package:flutter/material.dart';

void checkOperators() {
  print("--- Operators ---");

  // Arithmetic Operator
  // + -> Add, - -> Subtract, * -> Multiply, / -> Divide, % -> Modulo
  print("Add: ${10 + 20}");
  print("Subtract: ${10 - 20}");
  print("Multiply: ${5 * 2}");
  print("Divide: ${10 / 2}");
  print("Modulo: ${10 / 5}");

  // Postfix/Prefix Increment and decrement
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  print(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  print(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  print(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  print(a != b); // -1 != 0

  // Relational and Equality Operator
  print("Equal: ${2 == 4}");
  print("Not Equal: ${4 != 2}");
  print("Grater than: ${4 > 2}");
  print("Grater than equal to: ${4 >= 2}");
  print("Less than: ${3 < 2}");
  print("Less than or equal to: ${3 <= 3}");

  // Type Test Operator
  var object = 20;
  if (object is String) {
    print("Object is string");
  }

  if (object is! String) {
    print("Object is not a String");
  }

  var object2 = "objects";
  String? name = object2 as String?;
  print(name?.length);

  // Assignment Operator
  var multiplyValue = 2;
  multiplyValue *= 2;
  print("Assignment Val: $multiplyValue");

  // Logical Operator
  var con1 = 2 == 2;
  var con2 = 3 == 3;
  print("AND: ${con1 && con2}");
  print("OR ${con1 || 3 == 2}");
  print("NOT: ${!con1}");

  // Conditional Expression
  var count = 10 > 2 ? 10 : 2;
  print(count);

  // if-null operator or null coalescing operator
  String playerName(String? name) => name ?? "Guest";

  // Cascade Notation
  var paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 2
    ..strokeCap = StrokeCap.round;

  // Spread Operators
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list2);

  // null-aware spread operator
  List<int>? list3;
  List<int>? list4 = [...list, ...?list3, ...list2];
  print(list4);

  // collection-if and collection-for operator
  var userRole = "admin";
  var menuItems = ["Dashboard", if (userRole == "admin") "Admin", "Profile"];
  print("Collection-if: $menuItems");

  var numbers = [1, 2, 3, 4, 5];
  var square = [6, for (var i in numbers) i * i, 7];
  print("Collection-for: $square");
}
