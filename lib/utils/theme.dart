import 'package:flutter/material.dart';

class CustomTheme {
  static Color cw = const Color.fromARGB(255, 255, 255, 255);
  static Color cb = const Color.fromARGB(255, 0, 0, 0);
  static Color primaryColor = const Color.fromRGBO(86, 179, 143, 1);
  static Color secondaryColor = const Color.fromRGBO(193, 84, 106, 1);
  static const balance = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white);
  static const money = TextStyle(
      fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white);
  static const inexp = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(86, 179, 143, 1));

  static const title = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black);
  static const time = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 70, 70, 70));
  static const message = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static const noSend = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(193, 84, 106, 1));

  var themeBank = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
    backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
    brightness: Brightness.light,

    //textTheme: GoogleFonts.latoTextTheme(),
    fontFamily: 'Lato',
    textTheme: const TextTheme(
        // headline1: TextStyle(
        //     fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.white),
        // headline3: TextStyle(
        //     fontSize: 36.0, fontStyle: FontStyle.normal, color: Colors.white),
        // bodyText1:
        //     TextStyle(fontSize: 28.0, fontFamily: 'Nunito', color: Colors.red),
        // bodyText2: TextStyle(
        //     fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        // button: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
    appBarTheme: AppBarTheme(backgroundColor: primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: const Size.fromHeight(52),
        textStyle: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(40, 12, 40, 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      hintStyle:
          TextStyle(fontSize: 12, color: Color.fromRGBO(193, 84, 106, 1)),
      labelStyle:
          TextStyle(fontSize: 18, color: Color.fromRGBO(204, 204, 204, 1)),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(204, 204, 204, 1)),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      filled: true,
      fillColor: Colors.white,
    ),
    listTileTheme: const ListTileThemeData(
        //contentPadding: EdgeInsets.symmetric(vertical: 12.0),
        ),
  );
}
