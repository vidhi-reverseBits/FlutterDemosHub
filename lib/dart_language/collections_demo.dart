
// https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d
import 'dart:collection';

void checkCollections() {

  print("--- Collections ---");

  /// List - arrays are List in dart

  List<String> myListOfNames;
  myListOfNames = ["Bob", "John"];
  print(myListOfNames);

  var list = [1, 2, 3, 4, 5];
  print(list);
  print("Length = ${list.length}");
  print("Second value: ${list[1]}");
  print("Last value: ${list.length - 1}");
  print("Sublist: ${list.sublist(2,4)}");
  print("Sublist with only start para: ${list.sublist(1)}");
  print("Range list: ${list.getRange(1, 3).toList()}");
  print("Reversed list: ${list.reversed.toList()}");
  
  print("Less than 3 from first: ${list.firstWhere((i) => i < 4)}");
  print("Less than 3 from last: ${list.lastWhere((i) => i < 4)}");
  print("Less than 3: ${list.where((i) => i < 3)}");

  var sum = list.fold(1, (i, j) => i+j);
  print("Fold: $sum");

  // Reduce doesn’t take any initialValue and the given list should be non-empty.
  var sum2 = list.reduce((i, j) => i+j);
  print("Reduce: $sum2");

  print("Take: ${list.take(3)}");
  print("Skip: ${list.skip(2)}");

  // If we have mixed type of list and what to retrieve single type values
  var mixList = [1, "two", 3, "Four", true];
  var nums = mixList.whereType<int>();
  print("Single type values: $nums");

  list.insert(list.last, 6);
  list.add(7);
  print(list);

  // compile-time constant list
  var list2 = const [1, 2, 3];
  // list2.insert(list2.last, 4); This line will going to throw an error as we cant change const values
  print(list2);


  /// Set - unordered collection of unique items
  // set declaration
  var names = <String>{};
  // map declaration
  var name2 = {};

  names = {"one", "two", "three", "four", "five"};
  // name2 = {"one", "two"}; // This will not work as we are assigning set values into map
  print("Set: $names");
  print(names.add("Six"));
  print("Set length: ${names.length}");

  // SplayTreeSet
  var alphabets = SplayTreeSet<int>();
  alphabets.addAll([6, 3, 4, 2, 9, 1, 5]);
  print("SplayTreeSet: $alphabets");


  /// Map - a map is an object that associates keys and values.
  var numbers = <int, String>{};
  numbers = {1: "one", 2: "two", 3: "three", 4: "four"};
  print("Map: $numbers");
  numbers[5] = "five";
  print("Map: $numbers");
  print("2nd value: ${numbers[2]}");
  print("Map length: ${numbers.length}");
  print("Empty check: ${numbers.isEmpty}");
  print("Keys: ${numbers.keys}");
  print("Values: ${numbers.values}");
  print("containsKey: ${numbers.containsKey(2)}");
  print("containsValue: ${numbers.containsValue("three")}");

  // create a copy of map
  var map2 = Map.of(numbers);
  map2[6] = "six";
  print("Copy Map: ${map2}");

  var letters = ['a', 'b', 'c'];
  var numbs = [1, 2, 3];
  var map = Map.fromIterables(numbs, letters);
  print("Map from list: $map");

  // update value
  map.update(2, (v) {
    print("Old value before update: $v");
    return "v";
  });
  print("Updated Map: $map");
  
  map.update(4, (v) => "d", ifAbsent: () => "addedD");
  print("Updated map: $map");

  // Iterating map
  map.forEach((key, value) {
    print("Key: $key and Value: $value");
  });

  // remove value
  map.remove(2);
  print("Map after removing 2nd key: $map");
  map.removeWhere((k, v) => v.startsWith("a"));
  print("Map after removing v: $map");
  map.clear();
  print("Map after clear: $map");

  // SplayTreeMap
  var splayMap = SplayTreeMap<int, String>();
  splayMap.addAll({5: "five", 1: "one", 2: "two"});
  print("SplayTreeMap: $splayMap");
}