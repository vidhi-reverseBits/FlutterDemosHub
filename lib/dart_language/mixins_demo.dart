class A {

}

class B  {

}

/// This is not possible in dart as it does not support multiple inheritance
/// Each class definition can have at most one extends clause.
/* class C extends A, B {

} */

/// Achieve multiple inheritance using mixins
/// https://medium.com/flutter-community/https-medium-com-shubhamhackzz-dart-for-flutter-mixins-in-dart-f8bb10a3d341
class Performer {
  void perform() {
    print('performing...');
  }
}

mixin Dancer {
  void perform() {
    print('Dance...Dance...Dance..');
  }
}

mixin Singer {
  void perform() {
    print('lalaaa..laaalaaa....laaaaa');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform(); // It will print the Singer perform method
  }
}

/// Use of on keyword
mixin First {
  void introduce(); // abstract method
  void display() {
    print("Display 1");
  }
}

// A mixin that can only be used with classes that also use [First]
mixin Second on First {
  void display2() {
    print("Display 2");
    display();
  }
}

// A class that uses both [First] and [Second] mixins.
class FinalClass with First, Second {
  void display3() {
    print("Display 3");
    display();
    display2();
  }

  @override
  void introduce() {
    print("Here is the introduce method of mixin 1");
  }
}

mixin One {}

mixin Two {}

mixin Three on One, Two {}

class D with One, Two, Three {}

/// Mixin class
mixin class Animal {
  void distribute() {
    print("Mixin classs Demo");
  }
}

// We can extend a mixin class
class Birds extends Animal {

}

// We can also mixing mixin class
class Insects with Animal {

}

// Mixin class
mixin class AB {
  void display() {
    print("This is mixin class AB method");
  }
}

mixin class BC {
  void display() {
    print("This is mixin class BC method");
  }
}

class AD with AB, BC {
    void show() {
      AB().display();
    }
}

void checkMixins() {
  var obj1 = FinalClass();
  obj1.display3();
  obj1.display2();
  obj1.display();
  obj1.introduce();

  // We can't create an instance of an mixin
  // var obj2 = First;

  var obj3 = Animal();
  obj3.distribute();

  var obj4 = AD();
  obj4.show();

  var obj5 = AB();
  obj5.display();

  var obj6 = BC();
  obj6.display();
}

/// class can extend only one class
/// To extend more than one class we can use mixins
/// We can implements as many classes as we want
/// Mixins can have properties and methods but don't have constructors
/// Mixins can't instantiated just like abstract and interface
/// mixin class can extend, mixing (with) and also can create instance