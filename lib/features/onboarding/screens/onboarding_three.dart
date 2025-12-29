import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});
  @override
  Widget build(BuildContext context) {
    String title = 'Start doing.';
    String description = 'Create tasks and build momentum every day.';
    String imgLink = 'assets/onboarding/calendar.svg';

    return OnboardingWidget(
      title: title,
      description: description,
      imgLink: imgLink,
    );
  }
}