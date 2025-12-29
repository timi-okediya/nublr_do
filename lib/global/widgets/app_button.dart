import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool isLoading;
  final bool isDisabled;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final bool disabled = isDisabled || isLoading;

    Color backgroundColor;
    Color foregroundColor;
    BorderSide? border;

    switch (variant) {
      case AppButtonVariant.primary:
        backgroundColor = colors.primary;
        foregroundColor = colors.onPrimary;
        border = null;
        break;

      case AppButtonVariant.secondary:
        backgroundColor = colors.secondary;
        foregroundColor = colors.onSecondary;
        border = null;
        break;

      case AppButtonVariant.outline:
        backgroundColor = Colors.transparent;
        foregroundColor = colors.primary;
        border = BorderSide(color: colors.primary);
        break;

      case AppButtonVariant.ghost:
        backgroundColor = Colors.transparent;
        foregroundColor = colors.onSurface;
        border = null;
        break;

      case AppButtonVariant.danger:
        backgroundColor = colors.error;
        foregroundColor = colors.onError;
        border = null;
        break;
    }

    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: border ?? BorderSide.none,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        child: isLoading
            ? const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(strokeWidth: 2),
        )
            : Text(label),
      ),
    );
  }
}

enum AppButtonVariant {
  primary,
  secondary,
  outline,
  ghost,
  danger,
}