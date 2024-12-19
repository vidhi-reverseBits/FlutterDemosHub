import 'package:flutter/cupertino.dart';

void checkAllDatatypes() {
  print("--- DataTypes ---");

  // Number
  int age = 20;
  double value = 20.67;

  num x =
      5; // If you use num, then variable can have both integer and double values.
  x = 15.34;

  // String => int
  var one = int.parse('1');
  print(one == 1);

  // String => double
  var onePointOne = double.parse('1.1');
  print(onePointOne == 1.1);

  // int => String
  String oneString = 1.toString();
  print(oneString);

  // double => String
  String onePointOneString = 1.1.toString();
  print(onePointOneString);

  // String - You can use single or double quote to represent string
  var statement = "I am learning dart.";
  print(statement.toUpperCase());

  // String - Equality check
  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  print(s1 ==
      'String concatenation works even over '
          'line breaks.');

  // Multi- line string
  var s2 = '''
  You can create 
  multi-line strings like this one.
  ''';
  print(s2);

  // bool - Boolean
  bool isCheck = true;
  if (isCheck == true) {
    print("check is done.");
  }

  var fullName = '';
  if (fullName.isEmpty) {
    print("Name is empty.");
  }

  // Runes
  var hi = 'Hi 🇩🇰';
  print(hi);
  print("The end of a string: ${hi.substring(hi.length - 1)}");
  print("The last character: ${hi.characters.last}");

  // Records
  checkRecords();
}

void checkRecords() {
  var records = ('first', a: 2, b: true, 'last');
  print(records.$1);
  print(records.a);

  // Record type declaration
  ({int x, bool y}) values;
  values = (x: 10, y: true); // record Initialize
  print(values);

  ({int num1, int num2}) num1AndNum2 = (num1: 5, num2: 7);
  print(num1AndNum2);

  // Swap numbers using record
  var record = (10, 20);
  print(swap(record));
}

/// Method to swap numbers by using Records
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
