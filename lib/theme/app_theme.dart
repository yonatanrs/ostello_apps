import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.amber, // Used to be accentColor
      primary: Colors.purple,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.purpleAccent, // This is the color used for RaisedButton background
    ),

    // Define the default font family.
    fontFamily: 'Montserrat',

    // Define the default TextTheme.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87),
      subtitle1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Hind', color: Colors.black54),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black54),
    ),

    // Define the default InputDecorationTheme.
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.purple),
      ),
    ),

    // Add any other theme properties you need...
  );
}
