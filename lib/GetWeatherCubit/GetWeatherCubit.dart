import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherStates.dart';
import 'package:weatherapp_task/Models/WeatherAppModel.dart';
import 'package:weatherapp_task/Services/WeatherApIServices.dart';

class GetWeatherCubit extends Cubit<GetWeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weathermodel;
  getCurrentWeather(String cityName) async {
    try {
      weathermodel = await WeatherGetAPIServices()
          .getCurrentWeatherData(searchedcityName: cityName);
      emit(WeatherSucessState());
    } catch (e) {
      emit(WeatherErrorState(e.toString()));
    }
  }
}
