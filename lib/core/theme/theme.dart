import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_pallete.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Pallete.gradient2,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Pallete.borderColor,
          width: 3,
        ),
      ),
    ),
  );
}
