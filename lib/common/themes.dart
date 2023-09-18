import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.lightBlue,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 1.5,
          fontFamily: 'PTSans',
          fontWeight: FontWeight.w700,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.grey.shade900,
          selectedIconTheme: const IconThemeData(color: Colors.white,),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(
              color: Colors.white, letterSpacing: 1, fontSize: 12, fontWeight: FontWeight.w700, fontFamily: 'PTSans'),
          unselectedLabelStyle: const TextStyle(
              color: Colors.white, letterSpacing: 1, fontSize: 12, fontFamily: 'PTSans'),),
      textTheme: const TextTheme(
        displayLarge:
            TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 30, fontFamily: 'PTSans'),
        displayMedium:
            TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 24, fontFamily: 'PTSans'),
        displaySmall:
            TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 20, fontFamily: 'PTSans'),
        bodyLarge:
            TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 16, fontFamily: 'PTSans'),
        bodyMedium:
            TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 14, fontFamily: 'PTSans'),
        bodySmall:
            TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 12, fontFamily: 'PTSans'),
      ),
    );
  }
}
