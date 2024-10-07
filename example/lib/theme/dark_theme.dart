import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var primaryColor = const Color(0xff292929);
var primaryColorDark = const Color(0xff1a1616);
var primaryColorLight = const Color(0xff797979);
var secondColor = const Color(0xffFF5733);
var darkTheme = ThemeData(
  primaryColor: primaryColor,
  dividerTheme: const DividerThemeData(color: Colors.white30),
  useMaterial3: true,
  splashFactory: NoSplash.splashFactory,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  scaffoldBackgroundColor: primaryColorDark
);
