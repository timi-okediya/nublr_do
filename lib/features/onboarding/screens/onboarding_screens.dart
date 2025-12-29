
import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_one.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  _OnboardingScreensState createState () =>  _OnboardingScreensState();
}

class  _OnboardingScreensState extends State<OnboardingScreens> {
  final int _onboardingState = 0;

  @override
  Widget build(BuildContext context) {
    return OnboardingOne();
  }
}