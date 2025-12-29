// onboarding_three.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';
import 'package:nublr_do/providers/onboarding_provider.dart';

class OnboardingThree extends StatelessWidget {
  final VoidCallback onBack;

  const OnboardingThree({
    super.key,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    String title = 'Start doing.';
    String description = 'Create tasks and build momentum every day.';
    String imgLink = 'assets/onboarding/calendar.svg';
    return OnboardingWidget(
      title: title,
      description: description,
      imgLink: imgLink,
      currentStep: 2,
      onNext: () {
        context.read<OnboardingProvider>().completeOnboarding();
      },
      onBack: onBack,
      onSkip: () {
        context.read<OnboardingProvider>().completeOnboarding();
      },
    );
  }
}