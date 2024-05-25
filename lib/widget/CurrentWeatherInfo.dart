import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_task/Constant/ConstantWeatherStateColors.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherCubit.dart';
import 'package:weatherapp_task/widget/CustomBodyText.dart';
import 'package:weatherapp_task/widget/CustomMoreWeatherdata.dart';
import 'package:weatherapp_task/widget/CustomTempWidget.dart';

class CurrentWeatherInfo extends StatelessWidget {
  CurrentWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weathermodel!;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              WeatherStateTheme.getWeatherStateColor(
                  weatherModel.currentWeatherState)[50]!,
              WeatherStateTheme.getWeatherStateColor(
                  weatherModel.currentWeatherState)[500]!,
              WeatherStateTheme.getWeatherStateColor(
                  weatherModel.currentWeatherState)[900]!
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomBodyText(
                  bodytext: weatherModel.searchedCityName,
                  bodyTextfontweight: FontWeight.bold,
                ),
                CustomBodyText(
                  bodytext: 'Status :${weatherModel.currentWeatherState}',
                  bodyTextysize: 30,
                  bodyTextfontweight: FontWeight.bold,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    WeatherStateTheme.getWeatherImage(
                        weatherModel.currentWeatherState),
                    width: 300,
                    height: 300,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(15),
                      // border: Border.all(width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 238, 224, 197),
                          blurRadius: 10,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(3, 6),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomBodyText(
                        bodytext: 'Temp :${weatherModel.temp.toString()}',
                        bodyTextysize: 30,
                        bodyTextfontweight: FontWeight.bold,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomBodyText(
                            bodytext:
                                'Date :${weatherModel.currentDate.day}-${weatherModel.currentDate.month}-${weatherModel.currentDate.year}',
                            bodyTextysize: 25,
                            bodyTextfontweight: FontWeight.bold,
                          ),
                          CustomBodyText(
                            bodytext:
                                'LastUpdated :${weatherModel.currentDate.hour} : ${weatherModel.currentDate.minute}',
                            bodyTextysize: 25,
                            bodyTextfontweight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CustomTempWidget(
                      temptext: 'Min',
                      currenttemp: weatherModel.minTemp,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomTempWidget(
                      temptext: 'Max',
                      currenttemp: weatherModel.maxTemp,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMoreWeatherdata(
                      weatherDataname: 'Wind',
                      icon: Icons.wind_power,
                      weatherDataunit: 'Km/h',
                      value: weatherModel.wind,
                    ),
                    CustomMoreWeatherdata(
                      weatherDataname: 'Humidty',
                      icon: Icons.water_drop_rounded,
                      weatherDataunit: '%',
                      value: weatherModel.humidity,
                    ),
                    CustomMoreWeatherdata(
                      weatherDataname: 'Cloud',
                      icon: Icons.wind_power,
                      weatherDataunit: '%',
                      value: weatherModel.cloud,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
