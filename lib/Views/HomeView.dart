import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherCubit.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherStates.dart';
import 'package:weatherapp_task/Views/SearchView.dart';
import 'package:weatherapp_task/widget/CurrentWeatherInfo.dart';

import 'package:weatherapp_task/widget/CustomBodyText.dart';
import 'package:weatherapp_task/widget/NoWeatherInfo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchView(),
            ),
          );
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.search),
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherInfo();
          } else if (state is WeatherSucessState) {
            return CurrentWeatherInfo();
          } else {
            return Center(
              child: Text('There is Error,Try again....'),
            );
          }
        },
      ),
    );
  }
}
