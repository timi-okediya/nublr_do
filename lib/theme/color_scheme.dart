import 'package:flutter/material.dart';

class AppColorScheme {
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF4F46E5),
    onPrimary: Colors.white,
    secondary: Color(0xFF22C55E),
    onSecondary: Colors.white,
    error: Color(0xFFEF4444),
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Color(0xFF111827),
  );

  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF818CF8),
    onPrimary: Colors.black,
    secondary: Color(0xFF4ADE80),
    onSecondary: Colors.black,
    error: Color(0xFFF87171),
    onError: Colors.black,
    surface: Color(0xFF111827),
    onSurface: Colors.white,
  );
}
