import 'constants.dart';
import 'package:flutter/material.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kContentColorLightTheme,
          displayColor: kContentColorLightTheme,
        ),
    buttonTheme: ButtonThemeData(buttonColor: buttonColorLightTheme),
    colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
        background: Colors.white,
        onPrimary: bgColor),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      )),
      backgroundColor: MaterialStateProperty.all<Color>(buttonColorLightTheme),
    )),
    accentColor: buttonColorDarkTheme,
    inputDecorationTheme: InputDecorationTheme(
        suffixStyle: TextStyle(color: kborderColor),
        hintStyle: TextStyle(color: kAccentColor),
        prefixStyle: TextStyle(color: kborderColor),
        focusColor: kborderColor,
        filled: true,
        fillColor: kborderColor,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        labelStyle: TextStyle(color: kFontColor),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Colors.blue[50]!),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Colors.blue[50]!),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        )),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: kContentColorDarkTheme,
        displayColor: kContentColorDarkTheme),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      )),
      backgroundColor: MaterialStateProperty.all<Color>(buttonColorLightTheme),
    )),
    colorScheme: const ColorScheme.dark().copyWith(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
        background: kSecondaryColor,
        onPrimary: bgColor),
    accentColor: kContentColorDarkTheme,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: kAccentColor),
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        filled: true,
        fillColor: textFiledColorDarkTheme,
        labelStyle: TextStyle(color: kFontColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              style: BorderStyle.solid, color: textFiledColorDarkTheme!),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              style: BorderStyle.solid, color: textFiledColorDarkTheme!),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        )),
  );
}

final appBarTheme = AppBarTheme(
    centerTitle: false, elevation: 0, backgroundColor: lightModeBackgroundClr);
