
// https://dart.dev/language/metadata
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo("Vidhi", "Implemented this metadata")
void doSomething() {
  print("Do something");
}