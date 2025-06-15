import 'package:buyzaar/core/constants/sizes.dart';
import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: AppSizes.defaultSidePadding,
            left: AppSizes.defaultSidePadding,
          ),
          child: Text(
            'Login to your account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1.2,
              fontFamily: GoogleFonts.sora().fontFamily,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: AppSizes.defaultSidePadding),
          child: Text(
            'It\'s great to see you again.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Color(AppColors.lightGreyText),
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
