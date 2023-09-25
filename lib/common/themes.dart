import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.orange.shade900,
      scaffoldBackgroundColor: const Color(0xfff2f2f2),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          letterSpacing: 1.5,
          fontFamily: 'PTSans',
          fontWeight: FontWeight.w700,
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: Colors.orange.shade900,
        ),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
            color: Colors.black,
            letterSpacing: 1,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontFamily: 'PTSans'),
        unselectedLabelStyle: const TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 12,
            fontFamily: 'PTSans'),
      ),

      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 30,
            fontFamily: 'PTSans'),
        displayMedium: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 24,
            fontFamily: 'PTSans'),
        displaySmall: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 20,
            fontFamily: 'PTSans'),
        bodyLarge: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 18,
            fontFamily: 'PTSans'),
        bodyMedium: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 16,
            fontFamily: 'PTSans'),
        bodySmall: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 14,
            fontFamily: 'PTSans'),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange.shade900),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'PTSans',
                wordSpacing: 0.5),
          ),
        ),
      ),
    );
  }
}
