import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nublr_do/global/widgets/app_button.dart';
import 'current_onboarding_indicator.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imgLink;

  const OnboardingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imgLink
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
              onPressed: () {},
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

                  CurrentOnboardingIndicator(),

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
                AppButton(
                  label: 'BACK',
                  onPressed: () {},
                  variant: AppButtonVariant.ghost,
                ),

                AppButton(
                  label: 'NEXT',
                  onPressed: () {},
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