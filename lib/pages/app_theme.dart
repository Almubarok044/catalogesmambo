import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.teal[300],
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );

  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.purple[300],
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.grey.shade500, // switch ON di dark mode → warna ini
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
    // ⭐ border tetap abu-abu sama seperti light mode
    switchTheme: SwitchThemeData(
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        return Colors.grey.shade500;
      }),
    ),
  );
}
