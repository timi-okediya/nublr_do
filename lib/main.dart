import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:nublr_do/config/router.dart';
import 'package:nublr_do/providers/onboarding_provider.dart';
import 'package:nublr_do/theme/app_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();

  runApp(MyApp(localStorage: localStorage));
}

class MyApp extends StatelessWidget {
  final LocalStorage localStorage;

  const MyApp({
    super.key,
    required this.localStorage,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OnboardingProvider(localStorage),
        ),
      ],
      builder: (context, child) {
        final onboardingProvider = context.read<OnboardingProvider>();

        return MaterialApp.router(
          title: 'Nublr Do',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.light,
          routerConfig: createRouter(onboardingProvider),
        );
      },
    );
  }
}