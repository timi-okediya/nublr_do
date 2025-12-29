import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      spacing: 8,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: <Widget>[
            SvgPicture.asset(
              'assets/do_logo.svg',
              width: 40,
              height: 40,
              colorFilter: ColorFilter.mode(
                colors.primary, // modern orange
                BlendMode.srcIn,
              ),
            ),
            Text(
              'NUBLR DO',
              style: textTheme.titleLarge?.copyWith(
                color: colors.onSurface,
              ),
            ),
          ],
        ),
        Text(
          'Focus. Do. Done.',
          style: textTheme.bodyLarge?.copyWith(
            color: colors.onSurface
          ),
        )
      ],
    );
  }
}
