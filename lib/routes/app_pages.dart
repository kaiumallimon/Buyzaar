import 'package:buyzaar/features/onboard/presentation/pages/onboard_page.dart';
import 'package:buyzaar/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class AppPages {
  static GoRoute splashPage = GoRoute(
    path: '/',
    builder: (context, state) => const SplashPage(),
  );

  static GoRoute onboardPage = GoRoute(
    path: '/onboard',
    builder: (context, state) => const OnboardPage(),
  );

  static GoRoute homePage = GoRoute(
    path: '/home',
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Home Page'))),
  );

  static GoRoute loginPage = GoRoute(
    path: '/login',
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Login Page'))),
  );
}
