import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 162, 0, 255);
  static const Color primarylight = Color.fromARGB(255, 214, 117, 255);
  static const Color primaryDark = Color.fromARGB(255, 98, 36, 133);

  static const Color secondaryColor = Color.fromARGB(255, 255, 0, 0);
  static const Color tertiaryColor = Color(0xFF1488A6);

  static const List<Color> primaryGradient = [primaryColor, Color.fromARGB(255, 208, 99, 241)];

  static const Color backgroundColor = Color(0xFFF8FAFC);
  static const Color surfaceColor = Color(0xFFF8FAFC);
  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF647488);

  static const Color succes = Color(0xFF22C55E);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: tertiaryColor,
        surface: surfaceColor,
        error: error
      ),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: textPrimary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 14,
        ),
      ),
    );
  }
}
