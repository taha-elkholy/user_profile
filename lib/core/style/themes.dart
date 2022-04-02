import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appThemeLight = ThemeData(
  primarySwatch: Colors.pink,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    color: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: Colors.black,
      )
  ),
);
