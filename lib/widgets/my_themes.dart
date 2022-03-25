import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme() {
    return ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          titleTextStyle: TextStyle(color: Colors.black),
        ));
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}
