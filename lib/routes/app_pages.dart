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
    pageBuilder: (context, state) =>
        buildFadeTransition(state, const OnboardPage()),
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

CustomTransitionPage buildFadeTransition(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
