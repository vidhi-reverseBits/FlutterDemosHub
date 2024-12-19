
// https://dart.dev/language/error-handling
void checkExceptionHandling() {

  print("--- Exception Handling ---");

  try {
    numberDivideByZeroException(throwException: true);
  } catch (e) {
    print("Caught rethrown exception: $e");
  }

  /// Assert - message will print when assert failed
  var number = 10;
  assert(number > 12, "This is the assert message");
}

void numberDivideByZeroException({bool throwException = false}) {
  try {
    if (throwException) {
      throw Exception("This is a test exceptiion");
    } else {
      int result = 12 ~/ 0;
      print("Result: $result");
    }
  } on UnsupportedError catch (e) {
    print('Error: Division by zero is not allowed. $e');
  } catch (e) {
    print('An unknown error occurred: $e');
    rethrow;
  } finally {
    print('This will always be printed.');
  }
}