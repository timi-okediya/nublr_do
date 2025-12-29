// onboarding_two.dart
import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingTwo extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const OnboardingTwo({
    super.key,
    required this.onNext,
    required this.onBack,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    String title = 'Stay on track.';
    String description = 'Plan tasks, set priorities, and move faster.';
    String imgLink = 'assets/onboarding/daily_routine.svg';

    return OnboardingWidget(
      title: title,
      description: description,
      imgLink: imgLink,
      currentStep: 1,
      onNext: onNext,
      onBack: onBack,
      onSkip: onSkip,
    );
  }
}

