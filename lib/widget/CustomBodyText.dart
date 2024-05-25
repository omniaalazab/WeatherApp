import 'package:flutter/material.dart';

class CustomBodyText extends StatelessWidget {
  CustomBodyText(
      {super.key,
      required this.bodytext,
      this.bodyTextysize = 18,
      this.bodyTextfontcolor = Colors.black,
      this.bodyTextfontweight = FontWeight.w400});

  String bodytext;
  double? bodyTextysize;
  Color bodyTextfontcolor;
  FontWeight bodyTextfontweight;
  @override
  Widget build(BuildContext context) {
    return Text(
      bodytext,
      style: TextStyle(
          fontFamily: 'Play',
          fontSize: bodyTextysize,
          fontWeight: bodyTextfontweight,
          color: bodyTextfontcolor),
    );
  }
}
