import 'package:flutter/material.dart';
import 'package:nublr_do/features/onboarding/widgets/logo_widget.dart';

class OnboardingHome extends StatelessWidget {
  const OnboardingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              LogoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}