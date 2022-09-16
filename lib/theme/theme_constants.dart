import 'package:flutter/material.dart';
import '../constants.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
  splashColor: const Color(0xFFFFFFFF),
  primaryColor: Colors.black,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    toolbarTextStyle: TextStyle(color: Colors.black),
    iconTheme:  IconThemeData(color: Colors.black),
  ),
  cardColor: const Color.fromRGBO(255, 255, 255, 1),
  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
);

ThemeData darkTheme = ThemeData(
  splashColor: const Color(0xFF181A20),
  backgroundColor: Colors.grey.shade900,
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    color: appBarDark,
    toolbarTextStyle: TextStyle(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  scaffoldBackgroundColor: scaffoldDark,
  cardColor: Colors.grey.shade900,
);
