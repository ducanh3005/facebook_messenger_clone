import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light();
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      backgroundColor: Colors.black,
      accentColor: Colors.white,
      tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
      ),
      splashColor: Colors.black,
      platform: TargetPlatform.macOS);
}
