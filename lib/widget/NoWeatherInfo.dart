import 'package:flutter/material.dart';
import 'package:weatherapp_task/widget/CustomBodyText.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomBodyText(
        bodytext: "Search on your city",
        bodyTextfontcolor: Colors.blueGrey,
        bodyTextfontweight: FontWeight.bold,
      ),
    );
  }
}
