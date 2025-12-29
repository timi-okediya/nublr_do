import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nublr_do/global/widgets/app_button.dart';
import 'current_onboarding_indicator.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imgLink;
  final int currentStep;
  final VoidCallback? onNext;
  final VoidCallback? onBack;
  final VoidCallback? onSkip;

  const OnboardingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imgLink,
    required this.currentStep,
    this.onNext,
    this.onBack,
    this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppButton(
              label: 'SKIP',
              onPressed: onSkip ?? () {},
              variant: AppButtonVariant.ghost,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                spacing: 40,
                children: <Widget>[
                  Center(
                    child: SvgPicture.asset(
                      imgLink,
                      width: 220,
                      height: 220,
                    ),
                  ),

                  CurrentOnboardingIndicator(currentStep: currentStep),

                  SizedBox(
                    width: 300,
                    child: Column(
                      spacing: 28,
                      children: <Widget>[
                        Text(
                          title,
                          style: textTheme.displayLarge?.copyWith(
                              color: colors.onSurface
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          description,
                          style: textTheme.bodyLarge?.copyWith(
                              color: colors.onSurface
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Show back button only if onBack is provided
                if (onBack != null)
                  AppButton(
                    label: 'BACK',
                    onPressed: onBack!,
                    variant: AppButtonVariant.ghost,
                  )
                else
                  SizedBox(width: 80), // Placeholder for alignment

                AppButton(
                  label: currentStep == 2 ? 'GET STARTED' : 'NEXT',
                  onPressed: onNext ?? () {},
                  variant: AppButtonVariant.primary,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}