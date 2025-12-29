import 'package:flutter/material.dart';
import 'package:nublr_do/global/widgets/app_button.dart';
import 'package:nublr_do/global/widgets/app_icon_button.dart';

class GotoAuthScreen extends StatelessWidget {
  const GotoAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            AppIconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  spacing: 36,
                  children: <Widget>[
                    Text(
                      'Welcome to Nublr Do',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface
                      ),
                    ),
                    Text(
                      'Please login to your account or create new account to continue.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 20,
              children: <Widget>[
                AppButton(
                  label: 'LOGIN',
                  onPressed: () {},
                  variant: AppButtonVariant.primary,
                  widthFull: true,
                ),

                AppButton(
                  label: 'REGISTER',
                  onPressed: () {},
                  variant: AppButtonVariant.outline,
                  widthFull: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}