class GetWeatherStates {}

class WeatherInitialState extends GetWeatherStates {}

class WeatherSucessState extends GetWeatherStates {}

class WeatherErrorState extends GetWeatherStates {
  final String errorMessage;
  WeatherErrorState(this.errorMessage);
}
