import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart';
import 'package:nublr_do/features/home/home_screen.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_home.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_screens.dart';
import 'package:nublr_do/providers/onboarding_provider.dart';

GoRouter createRouter(OnboardingProvider onboardingProvider) {
  return GoRouter(
    initialLocation: '/onboarding',
    refreshListenable: onboardingProvider,

    redirect: (context, state) {
      if (!onboardingProvider.isLoaded) {
        return null;
      }

      final bool onboardingDone = onboardingProvider.isDone;
      final String location = state.matchedLocation;

      if (onboardingDone && (location == '/onboarding' || location == '/onboarding-steps')) {
        return '/home';
      }

      if (!onboardingDone && location == '/onboarding') {
        return '/onboarding-steps';
      }

      if (!onboardingDone && location == '/home') {
        return '/onboarding-steps';
      }

      return null;
    },

    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) {
          return const OnboardingHome();
        },
      ),

      GoRoute(
        path: '/onboarding-steps',
        builder: (context, state) {
          return const OnboardingScreens();
        },
      ),

      GoRoute(
        path: '/home',
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}