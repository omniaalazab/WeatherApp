import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherCubit.dart';
import 'package:weatherapp_task/Models/WeatherAppModel.dart';

import 'package:weatherapp_task/widget/CustomBodyText.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  TextEditingController weathersearchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomBodyText(bodytext: "Search"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: weathersearchcontroller,
            onSubmitted: (value) async {
              var weatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              weatherCubit.getCurrentWeather(value);

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              hintText: "Search on your city",
              label: CustomBodyText(
                bodytext: "Search",
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
