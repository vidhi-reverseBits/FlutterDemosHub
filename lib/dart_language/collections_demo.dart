
// https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d
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
  // name2 = {"one", "two"}; // This will not
  print("Set: $names");
  print(names.add("Six"));
  print("Set length: ${names.length}");
}