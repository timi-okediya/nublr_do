import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});
  @override
  Widget build(BuildContext context) {
    String title = 'Stay on track.';
    String description = 'Plan tasks, set priorities, and move faster.';
    String imgLink = 'assets/onboarding/daily_routine.svg';

    return OnboardingWidget(
      title: title,
      description: description,
      imgLink: imgLink,
    );
  }
}