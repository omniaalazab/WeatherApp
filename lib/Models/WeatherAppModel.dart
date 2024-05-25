class WeatherModel {
  final String currentWeatherState;
  final String searchedCityName;
  final DateTime currentDate;

  final double temp;
  final double minTemp;
  final double maxTemp;
  final String? weatherImage;
  final int humidity;
  final double wind;
  final int cloud;

  WeatherModel(
      {required this.currentWeatherState,
      required this.searchedCityName,
      required this.currentDate,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.cloud,
      this.weatherImage,
      required this.humidity,
      required this.wind});
  factory WeatherModel.fromjson(Map<String, dynamic> json) {
    return WeatherModel(
      currentWeatherState: json['forecast']['forecastday'][0]['day']
          ['condition']['text'],
      searchedCityName: json['location']['name'],
      currentDate: DateTime.parse(json['current']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      cloud: json['current']['cloud'],
      weatherImage: json['current']['condition']['icon'],
      humidity: json['current']['humidity'],
      wind: json['current']['wind_kph'],
    );
  }
}
