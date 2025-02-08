import 'package:flutter/material.dart';
import 'package:inventory/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeData myTheme = ThemeData(
      brightness: Brightness.dark, // Dark mode theme
      primaryColor: Colors.blueGrey[700], // Bluish AppBar color
      scaffoldBackgroundColor: Colors.grey[900], // Black background
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey[700], // Bluish AppBar
        foregroundColor: Colors.white, // White text/icons in AppBar
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const HomePage(),
    );
  }
}
