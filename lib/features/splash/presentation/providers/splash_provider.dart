import 'package:buyzaar/injections/injection_container.dart';
import 'package:buyzaar/shared/local/database/local_db.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final localDB = getIt<LocalDB>();

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> navigateToHome(BuildContext context) async {
    Map<dynamic, dynamic>? data = localDB.getData('app_preferences');

    if (data != null && data.containsKey('onboarded')) {
      if (data['onboarded'] == true) {
        // User has already onboarded, navigate to login
        context.go('/login');

        return;
      }
    }

    // User has not onboarded, navigate to onboard page
    context.go('/onboard');
  }
}
