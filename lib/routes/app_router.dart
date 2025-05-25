import 'package:buyzaar/main.dart';
import 'package:buyzaar/routes/app_pages.dart';
import 'package:go_router/go_router.dart';

class Approuter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: navigatorKey,
    routes: [
    AppPages.splashPage
  ]);
}
