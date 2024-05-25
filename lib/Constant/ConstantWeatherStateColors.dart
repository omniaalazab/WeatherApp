import 'package:flutter/material.dart';

class WeatherStateTheme {
  static getWeatherImage(String? CurrentweatherState) {
    switch (CurrentweatherState) {
      case 'Sunny':
        return 'assets/images/sunny.png';
      case 'Partly cloudy':
        return 'assets/images/weather-partly.png';
      case 'Cloudy':
      case 'Overcast':
      case 'Mist':
        return 'assets/images/weather.png';
      case 'Patchy rain possible':
      case 'Patchy snow possible':
      case 'Patchy sleet possible':
      case 'Patchy freezing drizzle possible':
      case 'Thundery outbreaks possible':
        return 'assets/images/weather.png';
      case 'Blowing snow':
      case 'Blizzard':
        return 'assets/images/snow.png';
      case 'Fog':
      case 'Freezing fog':
        return 'assets/images/fog.png';
      case 'Patchy light drizzle':
      case 'Light drizzle':
      case 'Freezing drizzle':
      case 'Heavy freezing drizzle':
      case 'Patchy light rain':
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
      case 'Light rain shower':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
        return 'assets/images/rain.jpg';
      case 'Light sleet':
      case 'Moderate or heavy sleet':
      case 'Patchy light snow':
      case 'Light snow':
      case 'Patchy moderate snow':
      case 'Moderate snow':
      case 'Patchy heavy snow':
      case 'Heavy snow':
      case 'Ice pellets':
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
      case 'Light snow showers':
      case 'Moderate or heavy snow showers':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
      case 'Patchy light snow with thunder':
      case 'Moderate or heavy snow with thunder':
        return 'asset/image/snow.png';

      default:
        return 'assets/images/sunny1.jpg';
    }
  }

  static MaterialColor getWeatherStateColor(String? weatherState) {
    if (weatherState == null) {
      return Colors.blue;
    } else {
      switch (weatherState) {
        case 'Sunny':
        case 'Clear':
          return Colors.orange;
        case 'Overcast':
        case 'Cloudy':
        case 'Mist':
        case 'Fog':
        case 'Freezing fog':
        case 'Blowing snow':
        case 'Blizzard':
          return Colors.blueGrey;
        case 'Thundery outbreaks possible':
        case 'Patchy light rain with thunder':
        case 'Moderate or heavy rain with thunder':
        case 'Patchy light snow with thunder':
        case 'Moderate or heavy snow with thunder':
          return Colors.deepPurple;
        case 'Patchy rain possible':
        case 'Patchy snow possible':
        case 'Patchy sleet possible':
        case 'Patchy freezing drizzle possible':
        case 'Patchy light drizzle':
        case 'Light drizzle':
        case 'Freezing drizzle':
        case 'Heavy freezing drizzle':
        case 'Patchy light rain':
        case 'Light rain':
        case 'Moderate rain at times':
        case 'Moderate rain':
        case 'Heavy rain at times':
        case 'Heavy rain':
        case 'Light freezing rain':
        case 'Moderate or heavy freezing rain':
        case 'Light sleet':
        case 'Moderate or heavy sleet':
        case 'Patchy light snow':
        case 'Light snow':
        case 'Patchy moderate snow':
        case 'Moderate snow':
        case 'Patchy heavy snow':
        case 'Heavy snow':
        case 'Ice pellets':
        case 'Light rain shower':
        case 'Moderate or heavy rain shower':
        case 'Torrential rain shower':
        case 'Light sleet showers':
        case 'Moderate or heavy sleet showers':
        case 'Light snow showers':
        case 'Moderate or heavy snow showers':
        case 'Light showers of ice pellets':
        case 'Moderate or heavy showers of ice pellets':
        case 'Partly cloudy':
          return Colors.lightBlue;
        default:
          return Colors.blue;
      }
    }
  }
}
