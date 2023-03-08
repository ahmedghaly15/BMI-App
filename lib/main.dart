import 'package:flutter/material.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(
            fontSize: 30,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Info(),
    );
  }
}
