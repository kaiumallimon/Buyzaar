import 'package:buyzaar/features/login/presentation/pages/login_page.dart';
import 'package:buyzaar/features/onboard/presentation/pages/onboard_page.dart';
import 'package:buyzaar/features/splash/presentation/pages/splash_page.dart';
import 'package:buyzaar/routes/transitions.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class AppPages {
  static GoRoute splashPage = GoRoute(
    path: '/',
    builder: (context, state) => const SplashPage(),
  );

  static GoRoute onboardPage = GoRoute(
    path: '/onboard',
    pageBuilder: (context, state) => SlideTransitionPage(
      child: OnboardPage(),
      duration: const Duration(milliseconds: 600),
      key: state.pageKey,
    ),
  );

  static GoRoute homePage = GoRoute(
    path: '/home',
    builder: (context, state) =>
        const Scaffold(body: Center(child: Text('Home Page'))),
  );

  static GoRoute loginPage = GoRoute(
    path: '/login',
    pageBuilder: (context, state) => SlideTransitionPage(
      child: LoginPage(),
      duration: const Duration(milliseconds: 600),
      key: state.pageKey,
    ),
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
