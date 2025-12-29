import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Widget icon; // Icon OR SvgPicture
  final VoidCallback? onPressed;
  final AppIconButtonVariant variant;
  final double size;
  final bool isDisabled;
  final BorderRadius borderRadius;

  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.variant = AppIconButtonVariant.ghost,
    this.size = 48,
    this.isDisabled = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final disabled = isDisabled;

    Color background;
    Color foreground;
    BorderSide? border;

    switch (variant) {
      case AppIconButtonVariant.primary:
        background = colors.primary;
        foreground = colors.onPrimary;
        break;
      case AppIconButtonVariant.outline:
        background = Colors.transparent;
        foreground = colors.primary;
        border = BorderSide(color: colors.primary);
        break;
      case AppIconButtonVariant.danger:
        background = colors.error;
        foreground = colors.onError;
        break;
      case AppIconButtonVariant.ghost:
        background = Colors.transparent;
        foreground = colors.onSurface;
        break;
    }

    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: background,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
          side: border ?? BorderSide.none,
        ),
        child: InkWell(
          onTap: disabled ? null : onPressed,
          borderRadius: borderRadius,
          child: Center(
            child: IconTheme(
              data: IconThemeData(
                size: size * 0.45,
                color: disabled
                    ? colors.onSurface.withOpacity(0.38)
                    : foreground,
              ),
              child: SizedBox(
                width: size * 0.5,
                height: size * 0.5,
                child: Center(child: icon), // 🔑 TRUE CENTER
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum AppIconButtonVariant {
  primary,
  ghost,
  outline,
  danger,
}
