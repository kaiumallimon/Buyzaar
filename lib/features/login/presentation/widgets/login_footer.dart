import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 80,
      width: width,
      decoration: BoxDecoration(
        color: Color(AppColors.lightPrimary),
        border: Border(
          top: BorderSide(color: Color(AppColors.borderColor), width: 1.5),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: Color(AppColors.darkPrimary),
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                // Handle navigation to sign up page
              },
              child: Text(
                'Register now',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: Color(AppColors.darkPrimary),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
