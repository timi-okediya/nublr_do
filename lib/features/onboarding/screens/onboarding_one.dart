import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/onboarding_widget.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});
  @override
  Widget build(BuildContext context) {
    String title = 'Get things done, clearly.';
    String description = 'Organize tasks and focus on what matters.';
    String imgLink = 'assets/onboarding/manage.svg';

    return OnboardingWidget(
      title: title,
      description: description,
      imgLink: imgLink,
    );
  }
}