import 'package:buyzaar/core/theme/app_theme.dart';
import 'package:buyzaar/features/onboard/bloc/onboard_bloc.dart';
import 'package:buyzaar/features/onboard/bloc/onboard_event.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_event.dart';
import 'package:buyzaar/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // SplashBloc
        BlocProvider(create: (context) => SplashBloc()..add(SplashStarted())),

        // OnboardBloc
        BlocProvider(create: (context) => OnboardBloc()..add(OnboardStarted())),
      ],
      child: MaterialApp.router(
        title: 'Buyzaar',
        theme: AppTheme().theme(),
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routerDelegate: AppRouter.router.routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
