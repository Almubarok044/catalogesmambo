import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.teal)),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );
}
