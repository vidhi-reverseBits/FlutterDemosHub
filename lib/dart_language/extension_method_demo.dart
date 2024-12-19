// https://dart.dev/language/extension-methods
extension DateTimeExtensions on DateTime {
  bool isWeekend() {
    return weekday == DateTime.saturday || weekday == DateTime.sunday;
  }
}

void checkExtensionMethod() {
  DateTime today = DateTime.now();
  print("Is today a weekend? ${today.isWeekend()}");
}