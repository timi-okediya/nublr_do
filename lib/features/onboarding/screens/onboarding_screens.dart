import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_one.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_two.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_three.dart';
import 'package:nublr_do/providers/onboarding_provider.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  _OnboardingScreensState createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  int _currentStep = 0;

  void _goToStep(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  void _skipOnboarding() {
    context.read<OnboardingProvider>().completeOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentStep) {
      case 0:
        return OnboardingOne(
          onNext: () => _goToStep(1),
          onSkip: _skipOnboarding,
        );
      case 1:
        return OnboardingTwo(
          onNext: () => _goToStep(2),
          onBack: () => _goToStep(0),
          onSkip: _skipOnboarding,
        );
      case 2:
        return OnboardingThree(
          onBack: () => _goToStep(1),
        );
      default:
        return OnboardingOne(
          onNext: () => _goToStep(1),
          onSkip: _skipOnboarding,
        );
    }
  }
}