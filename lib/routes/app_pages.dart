import 'package:buyzaar/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  static GoRoute splashPage = GoRoute(path: '/',builder: (context,state)=> SplashPage());
}
