import 'package:flutter/material.dart';

class AppColorScheme {
  // ===== LIGHT THEME =====
  static const light = ColorScheme(
    brightness: Brightness.light,

    // Brand
    primary: Color(0xFFF97316),
    // Modern orange
    onPrimary: Colors.white,

    secondary: Color(0xFF22C55E),
    // Fresh green (success/complete)
    onSecondary: Colors.white,

    // Surfaces
    surface: Color(0xFFFFFFFF),
    surfaceVariant: Color(0xFFF3F4F6),
    // Light gray cards
    onSurface: Color(0xFF111827),
    // Near-black text

    // Error
    error: Color(0xFFEF4444),
    onError: Colors.white,
  );

  // ===== DARK THEME =====
  static const dark = ColorScheme(
    brightness: Brightness.dark,

    // Brand
    primary: Color(0xFFFB923C),
    // Softer orange for dark mode
    onPrimary: Color(0xFF1F2937),

    secondary: Color(0xFF4ADE80),
    onSecondary: Color(0xFF052E16),

    // Surfaces
    surface: Color(0xFF0F172A),
    surfaceVariant: Color(0xFF1E293B),
    onSurface: Color(0xFFE5E7EB),

    // Error
    error: Color(0xFFF87171),
    onError: Color(0xFF450A0A),
  );
}
