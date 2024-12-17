
// https://dart.dev/language/variables
void checkVariables() {

  print("--- Variables ---");

  // Variable declaration and initialization
  var name;
  var score = 30; // It is inferred as integer automatically by compiler
  int age = 23;

  print(name);
  print(score);
  print(age);

  name = "Bob";
  print(name);

  // String Interpolation
  var languageName = 'Dart';
  print("The language name is $languageName");
  print("The number of characters in String Dart is ${languageName.length}");

  // Nullable variable
  String? country;
  String? city = "Ahmedabad";
  print(country);
  print(city);

  // Late Variable
  late String state; // If you fail to initialize a late variable, a runtime error occurs when the variable is used.
  state = "Gujarat";
  print(state);


  // Final and Const Variable
  final subject = "Flutter";
  final int count = 30;
  // subject = "Android"; // Error: a final variable can only be set once.
  print("final value: $count");

  // A const variable is a compile-time constant
  const PI = 3.14;
  // PI = 40; // We can't the change the value of const keyword
  print("const value: $PI");



  // Difference between final and const
  // https://www.educative.io/answers/what-is-the-difference-between-const-and-final-keyword-in-dart
  final int finalValue = DateTime.now().year;
  print("Final date value: $finalValue");

  // year is not a compile-time constant. It's evaluated at runtime, which violates the requirement for const variables.
  // const int constValue = DateTime.now().year; //  will cause a compile-time error

}

// Instance variables can be final but not const.
class Circle {
  final area = 30;
  // const length = 50;
  static const width = 40;
}