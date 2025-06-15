import 'package:buyzaar/injections/injection_container.dart';
import 'package:buyzaar/shared/local/database/local_db.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class OnboardProvider extends ChangeNotifier {
  final localDB = getIt<LocalDB>();

  Future<void> onGetStarted(BuildContext context) async {
    await localDB.saveData('app_preferences', {'onboarded': true});

    // navigate to login
    if (context.mounted) {
      context.go('/login');
    }
  }
}
