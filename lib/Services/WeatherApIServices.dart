import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp_task/APIconstant/WeatherAPIPath.dart';
import 'package:weatherapp_task/Models/WeatherAppModel.dart';

class WeatherGetAPIServices {
  Dio dio = Dio();

  Future<WeatherModel> getCurrentWeatherData(
      {required String searchedcityName}) async {
    Response response = await dio.get(
        '$weatherAPIbaseurl/forecast.json?key=$weatherApIKey&q=$searchedcityName&days=1');
    try {
      Map<String, dynamic> jsondata = response.data;
      WeatherModel weatherModel = WeatherModel.fromjson(jsondata);

      return weatherModel;
    } on DioException catch (e) {
      String errormsg = e.response?.data['error']['message'] ??
          'There is Error,try again Later...';

      throw Exception(errormsg);
    } catch (e) {
      log(e.toString());

      throw Exception('There is error,try again');
    }
  }
}
