// https://dart.dev/language/constructors
void checkConstructors() {
  print("--- Constructors ---");

  var person1 = Person('Vidhi', 30); // Generative constructor
  var person2 = Person.named("Vidhi", age: 20); // Named constructor
  var person3 = const Person.constant("Vidhi", 10); // Constant constructor
  var person4 = Person.redirecting('Vidhi'); // Redirecting constructor
  var person5 = Person.factory("Vidhi", 10); // Factory constructors
  var person6 =
      Person.redirectingFactory("Vidhi"); // Redirecting Factory constructor

  print("Generative Constructor: Name: ${person1.name}, Age: ${person1.age}");
  print("Named Constructor: Name: ${person2.name}, Age: ${person2.age}");
  print("Constant Constructor: Name: ${person3.name}, Age: ${person3.age}");
  print("Redirecting Constructor: Name: ${person4.name}, Age: ${person4.age}");
  print("Factory Constructor: Name: ${person5.name}, Age: ${person5.age}");
  print("Factory Redirecting: Name: ${person6.name}, Age: ${person6.age}");
}

class Person {
  // For the Constant Constructor we need to make properties final
  final String name;
  final int age;

  // Generative constructor
  Person(this.name, this.age);

  // Named constructor
  Person.named(this.name, {required this.age});

  // Constant Constructor
  const Person.constant(this.name, this.age);

  // Redirecting Constructor
  Person.redirecting(String name) : this.named(name, age: 10);

  // Factory constructors
  factory Person.factory(String name, int age) {
    return Person(name, age);
  }

  factory Person.redirectingFactory(String name) = Person.redirecting;
}
