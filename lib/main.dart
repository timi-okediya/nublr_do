import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_home.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_one.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_three.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_two.dart';
import 'package:nublr_do/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      home: OnboardingThree(),
    );
  }
}