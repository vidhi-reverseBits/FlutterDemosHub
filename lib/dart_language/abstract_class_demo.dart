// https://dart.dev/language/methods

/// Abstract class
abstract class Shape {
  // Abstract method
  double calculateArea();

  // Concrete method
  void display() {
    print("This is a shape.");
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void checkAbstractClass() {
  var circle = Circle(10);
  var rect = Rectangle(20, 10);
  print("Circle Area: ${circle.calculateArea()}");
  print("Rectangle Area: ${rect.calculateArea()}");
  circle.display();
  rect.display();
}