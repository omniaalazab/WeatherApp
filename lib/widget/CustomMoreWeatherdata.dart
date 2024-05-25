import 'package:flutter/material.dart';
import 'package:weatherapp_task/widget/CustomBodyText.dart';

class CustomMoreWeatherdata extends StatelessWidget {
  CustomMoreWeatherdata(
      {super.key,
      required this.weatherDataname,
      required this.icon,
      required this.weatherDataunit,
      required this.value});
  String weatherDataname;
  var value;
  String weatherDataunit;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(width: 2),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(3, 5),
            ),
          ]),
      child: Column(
        children: [
          CustomBodyText(
            bodytext: weatherDataname,
            bodyTextfontweight: FontWeight.bold,
          ),
          Icon(this.icon),
          CustomBodyText(
            bodytext: '$weatherDataunit : $value',
            bodyTextfontweight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
