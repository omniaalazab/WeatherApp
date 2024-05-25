import 'package:flutter/material.dart';
import 'package:weatherapp_task/widget/CustomBodyText.dart';

class CustomTempWidget extends StatelessWidget {
  CustomTempWidget({
    super.key,
    required this.temptext,
    required this.currenttemp,
  });
  String temptext;
  double currenttemp;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colors.black, width: 1.5),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 7,
                blurStyle: BlurStyle.inner,
                spreadRadius: 1,
                offset: Offset(3, 5)),
          ],
        ),
        child: CustomBodyText(
          bodytext: '$temptext: $currenttemp',
          bodyTextysize: 30,
        ),
      ),
    );
  }
}
