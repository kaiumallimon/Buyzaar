import 'package:buyzaar/core/constants/sizes.dart';
import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/features/login/presentation/providers/login_provider.dart';
import 'package:buyzaar/shared/widgets/custom_button.dart';
import 'package:buyzaar/shared/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: CustomTextField(
            height: 60,
            hintText: 'Enter your email',
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            controller: loginProvider.emailController,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: CustomTextField(
            height: 60,
            hintText: 'Enter your password',
            label: 'Password',
            obscureText: true,
            controller: loginProvider.passwordController,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Forgot your password?',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: Color(AppColors.darkPrimary),
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Reset your password',
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
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSidePadding,
          ),
          child: CustomButton(
            width: double.infinity,
            height: 60,
            text: 'Login',
            onPressed: () {
              // Handle login logic here
            },
          ),
        ),
      ],
    );
  }
}
