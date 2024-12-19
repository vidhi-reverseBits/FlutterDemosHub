// https://dart.dev/language/classes
void checkClasses() {
  print("--- Classes ---");

  // create an instance
  var person1 = Person("Vidhi", 23);
  print(person1.introduce());

  // create an instance using new keyword
  var person2 = new Person("Bob", 30);
  print(person2.introduce());

  var person3 = const Person("Alice", 20);
  // person3.age = 25; // We can't able to do this as the field is final
  print(person3.introduce());

  // To get the type of an object
  print("The type of person3 object is: ${person3.runtimeType}");

  /// Implicit interface
  print(greet(Person("Kathy", 20)));
  print(greet(Student("Beny", 24, "Xavir")));

  /// Static variable and method
  print("Static count variable: ${Counter.count}");
  Counter.increment();
}

class Person {
  // Properties
  final String name;
  final int age;

  // Constructor
  const Person(this.name, this.age);

  // method
  String introduce() {
    return "Hello, my name is $name and I am $age years old.";
  }
}

class Student implements Person {
  String name;
  int age;
  String school;

  Student(this.name, this.age, this.school);

  String introduce() {
    return "Hello, my name is $name and I am $age years old. I study at $school.";
  }
}

String greet(Person person) => person.introduce();

class Counter {
  static int count = 0;

  static void increment() {
    count++;
    print("Count after incrementing: ${Counter.count}");
  }
}