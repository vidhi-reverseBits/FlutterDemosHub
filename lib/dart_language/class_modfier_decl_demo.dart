// abstract modifier
// can extend and implemented in same and other library.
// Can't constructed
abstract class Vehicle {
  void moveForward();
}


// base modifier
// can extend and implemented in same library but can not implemented in different library
// can be constructed
base class Student {
  void displayDetails() {
    print("base modifier");
  }
}


// interface modifier
// can be extend and implement in same library but can not extend and can be implement in different library
// can be constructed
interface class Employee {
  void showDetails(){
    print("Show Employee detaials");
  }
}


// abstract interface
// can be extend and implement in same library but can not extend and can be implement in different library
// can't be constructed
abstract interface class Animal {

}


// final modifier
// Can be extended and implemented in same library but can not in other library
// can be constructed
final class Job {
    void showAllJobs() {
      print("Final modifier");
    }
}

base class A extends Job {

}

base class B implements Job {
  @override
  void showAllJobs() {
  }
}
