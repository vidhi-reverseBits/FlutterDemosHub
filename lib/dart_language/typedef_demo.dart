// https://dart.dev/language/typedefs

/// typedef for a variable or a collection
typedef IntList = List<int>;

/// typedef for a function
/// Function represents any function, regardless of its parameters or return type.
typedef CompareFunction<T> = int Function(T a, T b);

int compareInt(int a, int b) {
  return a.compareTo(b);
}

void checkTypeDef() {
  print("--- TypeDef(Type alias) ---");

  IntList elements = [1, 2, 3, 4];
  print("TypeDef for a variable: $elements");

  CompareFunction<int> compare = compareInt;
  print("Compare: ${compare(10, 10)}");
}
