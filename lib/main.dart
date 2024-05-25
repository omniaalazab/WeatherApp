import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_task/Constant/ConstantWeatherStateColors.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherCubit.dart';
import 'package:weatherapp_task/GetWeatherCubit/GetWeatherStates.dart';
import 'package:weatherapp_task/Views/HomeView.dart';

void main() {
  runApp(NewWeatherApp());
}

class NewWeatherApp extends StatelessWidget {
  NewWeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, GetWeatherStates>(
            builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: WeatherStateTheme.getWeatherStateColor(
                BlocProvider.of<GetWeatherCubit>(context)
                    .weathermodel
                    ?.currentWeatherState,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: HomeView(),
          );
        });
      }),
    );
  }
}
