import 'package:flutter/material.dart';

var primaryColor = Colors.blueAccent;
var primaryColorDark = const Color(0xffc4c4c4);
var primaryColorLight = const Color(0xffbbbbbb);
var lightTheme = ThemeData(
  primaryColor: primaryColor,
  dividerTheme: const DividerThemeData(color: Colors.black38),
  useMaterial3: true,
  fontFamily: "Krasar",
  splashFactory: InkRipple.splashFactory,
  highlightColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
);
