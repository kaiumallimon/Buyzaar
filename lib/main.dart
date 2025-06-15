import 'package:buyzaar/core/theme/app_theme.dart';
import 'package:buyzaar/features/login/presentation/providers/login_provider.dart';
import 'package:buyzaar/features/onboard/presentation/providers/onboard_provider.dart';
import 'package:buyzaar/features/splash/presentation/providers/splash_provider.dart';
import 'package:buyzaar/routes/app_router.dart';
import 'package:buyzaar/injections/injection_container.dart' as di;
import 'package:buyzaar/shared/local/database/local_db.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  final localDB = LocalDB();
  await localDB.init();

  // Register LocalDB in GetIt
  di.getIt.registerSingleton<LocalDB>(localDB);

  await di.init(); // Initialize GetIt dependencies
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => di.getIt<SplashProvider>()),
        ChangeNotifierProvider(
          create: (context) => di.getIt<OnboardProvider>(),
        ),
        ChangeNotifierProvider(create: (context) => di.getIt<LoginProvider>()),
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
