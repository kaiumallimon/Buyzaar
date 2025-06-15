import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/features/login/presentation/widgets/login_footer.dart';
import 'package:buyzaar/features/login/presentation/widgets/login_form.dart';
import 'package:buyzaar/features/login/presentation/widgets/login_header.dart';
import 'package:buyzaar/features/login/presentation/widgets/social_login_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Color(AppColors.lightPrimary),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LoginHeader(),
                    LoginForm(),
                    SocialLoginSection(),
                  ],
                ),
              ),
            ),
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
