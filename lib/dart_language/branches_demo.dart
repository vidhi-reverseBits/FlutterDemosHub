
// https://dart.dev/language/branches
void checkBranches() {
  print("--- Branch Statements ---");

  /// if statement
  var num = 5;
  if (num % 2 == 0) {
    print("Number is even.");
  } else {
    print("Number is odd.");
  }

  /// if-case statement
  var element = 7;
  if(element case 0) {
    print("$element is 0");
  } else if (element case int n when n.isEven) {
    print("$element is even");
  } else {
    print("$element is odd");
  }

  /// Switch Statement
  var number = -5;
  switch (number) {
    case 0:
      print("Zero");
      break;
    case < 0:
      print("Negative");
      break;
    case >0:
      print("Positive");
      break;
  }
}