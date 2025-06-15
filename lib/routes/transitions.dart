import 'package:flutter/material.dart';

class SlideTransitionPage<T> extends Page<T> {
  final Widget child;
  final Offset beginOffset;
  final Curve curve;
  final Duration duration;

  const SlideTransitionPage({
    required this.child,
    required LocalKey key,
    this.beginOffset = const Offset(1, 0), // left to right by default
    this.curve = Curves.ease,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder<T>(
      settings: this,
      pageBuilder: (_, __, ___) => child,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween<Offset>(
          begin: beginOffset,
          end: Offset.zero,
        ).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
