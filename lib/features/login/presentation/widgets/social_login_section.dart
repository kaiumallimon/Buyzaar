import 'package:buyzaar/core/constants/sizes.dart';
import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/shared/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Expanded(
                child: Divider(
                  color: Color(AppColors.borderColor),
                  thickness: 1.5,
                ),
              ),
              Text(
                'Or',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: Color(AppColors.lightGreyText),
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: Divider(
                  color: Color(AppColors.borderColor),
                  thickness: 1.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: CustomButton(
            isOutlined: true,
            backgroundColor: Color(AppColors.lightPrimary),
            foregroundColor: Color(AppColors.darkPrimary),
            width: double.infinity,
            height: 60,
            elevation: 0,
            image: 'assets/svgs/logos_google-icon.svg',
            text: 'Continue with Google',
            onPressed: () {
              // Handle login logic here
            },
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: CustomButton(
            isOutlined: true,
            backgroundColor: CupertinoColors.activeBlue,
            foregroundColor: Color(AppColors.lightPrimary),
            width: double.infinity,
            height: 60,
            elevation: 0,
            image: 'assets/svgs/fb_logo.svg',
            text: 'Continue with Facebook',
            onPressed: () {
              // Handle login logic here
            },
          ),
        ),
      ],
    );
  }
}
