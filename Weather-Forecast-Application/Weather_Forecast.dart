import 'dart:async';

Future<String> fetchWeatherData(){
  return Future.delayed(Duration(seconds: 2), () => "Sunny");
}
Future<Map<String,dynamic>> parseWeatherData(String rawData){
  try {
    return Future(() => {
      "weather": rawData
    });
  } catch (e) {
   print("Error parsing weather data, data is corrupted");
    return Future(() => {
      "weather": "Unknown"
    });
  }
}
Future<void> displayWeatherInfo(Map<String,dynamic> weatherReport) {
  print("The weather today is: ${weatherReport['weather']}");
  return Future.value();
}

void main(){
  // runZonedGuarded((){
  // try {
  //   fetchWeatherData();
  // } on FormatException {
  //   print("Error fetching weather data, parsing error");
  // } catch (e) {
  //   print("Error fetching weather data, unknown error");
  // }
  // try {
  //   parseWeatherData("Sunny");
  // } on FormatException {
  //   print("Error parsing weather data, parsing error");
  // } catch (e) {
  //   print("Error parsing weather data, unknown error");
  // }
  // }, (e, s) {
  //   print("Error: $e");
  // });
  try {
    fetchWeatherData().
    then((weatherData) {
      parseWeatherData(weatherData).
      then((weatherReport) {
        displayWeatherInfo(weatherReport);
      }).catchError((error) {
        print("Error parsing weather data: $error");
      });
    }).catchError((error) {
      print("Error fetching weather data: $error");
    });
  } catch (e) {
    print("Unknown error occurred");
  }
}
