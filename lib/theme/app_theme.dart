import 'package:flutter/material.dart';
import 'text_theme.dart';
import 'color_scheme.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.light,
    textTheme: AppTextTheme.textTheme,
    fontFamily: 'Inter',
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.dark,
    textTheme: AppTextTheme.textTheme,
    fontFamily: 'Inter',
  );
}
