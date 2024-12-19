// https://dart.dev/language/enums

enum Color { red, green, blue }

/// Enhanced Enum
enum Weather {
  sunny(temp: 25),
  cloudy(temp: 18),
  rainy(temp: 15);

  const Weather({required this.temp});

  final int temp;
}

void checkEnums() {
  print("--- Enum ---");
  print("Green color index: ${Color.green.index}");

  // Access values of enum
  for (var color in Color.values) {
    print("Color: $color");
  }

  print("Color name: ${Color.green.name}");

  // Enhance enum
  var currentWeather = Weather.rainy;
  print("CurrentWeather: ${currentWeather.temp}C");
}
