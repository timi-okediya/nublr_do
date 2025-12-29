import 'package:flutter/material.dart';

class CurrentOnboardingIndicator extends StatelessWidget {
  const CurrentOnboardingIndicator({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IndicatorBar(isActive: true),
        IndicatorBar(),
        IndicatorBar(),
      ],
    );
  }
}

class IndicatorBar extends StatelessWidget {
  final bool isActive;

  const IndicatorBar({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 4,
      decoration: BoxDecoration(
        color: isActive
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.outlineVariant,
        borderRadius: BorderRadius.circular(56),
      ),
    );
  }
}
