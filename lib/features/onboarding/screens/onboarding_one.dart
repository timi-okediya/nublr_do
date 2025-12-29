import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingOne extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const OnboardingOne({
    super.key,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingWidget(
      title: 'Get things done, clearly.',
      description: 'Organize tasks and focus on what matters.',
      imgLink: 'assets/onboarding/manage.svg',
      currentStep: 0,
      onNext: onNext,
      onSkip: onSkip,
    );
  }
}