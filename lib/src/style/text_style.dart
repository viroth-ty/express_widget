import 'package:express_widget/src/style/app_color.dart';
import 'package:flutter/material.dart';

TextStyle headerTextStyle({
  Color? textColor = appColorBlack,
}) {
  return TextStyle(fontSize: 18, color: textColor);
}

TextStyle subTitleTextStyle({
  double fontSize = 14.0,
  Color? textColor = const Color(0xff9a9a9a),
  FontWeight? fontWeight,
}) {
  return TextStyle(fontSize: fontSize, color: textColor, fontWeight: fontWeight);
}

TextStyle sectionHeaderTitleTextStyle({
  double fontSize = 16.0,
  Color? textColor = appColorBlack,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(fontSize: fontSize, color: textColor, fontWeight: fontWeight);
}

TextStyle smallTitleTextStyle({
  double fontSize = 10.0,
  Color? textColor = appColorBlack,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(fontSize: fontSize, color: textColor, fontWeight: fontWeight);
}
