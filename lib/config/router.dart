import 'package:go_router/go_router.dart';
import 'package:nublr_do/features/home/home_screen.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_home.dart';

final router = GoRouter(
  initialLocation: '/onboarding',

  redirect: (context, state) {
    final bool onboardingDone = false;

    final isOnboardingRoute = state.matchedLocation == '/onboarding';

    if (!onboardingDone && !isOnboardingRoute) {
      return '/onboarding';
    }

    if (onboardingDone && isOnboardingRoute) {
      return '/home';
    }

    return null;
  },

  routes: [
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingHome(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
