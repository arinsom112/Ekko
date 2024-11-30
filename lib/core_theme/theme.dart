import 'package:ekko/core_theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Pallete.borderColor, width: 2)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Pallete.gradient1, width: 2)),
    ),
  );
}
