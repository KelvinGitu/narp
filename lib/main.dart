import 'package:delivery_app/common/themes.dart';
import 'package:delivery_app/views/screens/navbar/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: CustomTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}


