// https://dart.dev/language/functions
void checkFunctions() {
  print("--- Functions ---");

  // Parameterized function
  print("Sum: ${sum(10, 20)}");

  // Shorthand
  int minus(int a, int b) => a - b;
  print("Subtract: ${minus(10, 5)}");

  // Provide default value and use of required
  print("Multiply: ${multiply()}");

  // Optional parameter
  print("Greetings: ${greet()}");
  print("Greetings: ${greet(name: "Vidhi")}");

  // Pass function as a parameter to another function
  var list = [1, 2, 3];
  list.forEach(printElement);

  // Function without return type
  print(myAge(23));

  // Use of Function and how to assign function to a variable
  void Function(String, {String greeting}) g =
      meetAndGreet; // Here we are assigning function meetAndGreet to variable g And now g act as a reference to the greet function
  g("Vidhi", greeting: "Howdy");

  // Anonymous Function or lambdas, closures
  var fruits = ["apples", "bananas", "oranges"];
  var uppercasedFruites = fruits.map((item) {
    return item.toUpperCase();
  }).toList();

  uppercasedFruites.forEach((item) {
    print("$item: ${item.length}");
  });
}

int sum(int a, int b) {
  return a + b;
}

int multiply({int? a, int b = 10}) {
  return a ?? 1 * b;
}

String greet({String? name}) {
  return "Hello! ${name ?? "Guest"}";
}

void printElement(int element) {
  print("Element: $element");
}

myAge(int age) {
  print("Age: $age");
}

// Here name parameter and greeting parameter with optional type and provided default value
void meetAndGreet(String name, {String? greeting = "Hello"}) {
  print("$greeting $name!");
}
