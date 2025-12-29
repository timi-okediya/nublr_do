import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:nublr_do/config/router.dart';
import 'package:nublr_do/features/onboarding/screens/go_to_auth_screen.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_home.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_one.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_three.dart';
import 'package:nublr_do/features/onboarding/screens/onboarding_two.dart';
import 'package:nublr_do/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();

  runApp(MyApp(localStorage: localStorage));
}

class MyApp extends StatelessWidget {
  final LocalStorage localStorage;
  const MyApp({
    super.key,
    required this.localStorage
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}