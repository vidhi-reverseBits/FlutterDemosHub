// https://dart.dev/language/class-modifiers
// https://dart.dev/language/modifier-reference

import 'package:flutter_demo/dart_language/class_modfier_decl_demo.dart';

void checkModifiers() {
  print("--- Abstract class ---");

  /// abstract - Can't instantiated
  // var vehicle = Vehicle();
  var vehicle = Car();
  vehicle.moveForward();
  var vehicle2 = MockVehicle();
  vehicle2.moveForward();


  /// base - can be instantiated
  var student = Student();
  student.displayDetails();


  /// interface class - can be instantiated
  var emp = Employee();
  emp.showDetails();

}

// abstract - Can be extended
class Car extends Vehicle {
  @override
  void moveForward() {
    print("Extended Abstract method");
  }
}

// abstract - Can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward() {
    print("Implemented Abstract method");
  }
}


// base - can be extended
// The superclass is declared is base that's why we must need to declare as base, final or sealed
base class Detail extends Student {

}

// base - can't be instantiated
/* base class Details implements Student {

} */


// interface class - can't be extended
/* class EmpDet extends Employee {
} */

// interface - can be implemented
class EmpDet2 implements Employee {
  @override
  void showDetails() {
    print("EmpDet2");
  }
}