import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_event.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_state.dart' as splash_state;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return BlocProvider(
      create: (context) => SplashBloc()..add(SplashStarted()),
      child: BlocListener<SplashBloc, splash_state.SplashState>(
        listener: (context, state) {
          if (state is splash_state.SplashNavigateToHome) {
            navigatorKey.currentContext?.go('/home');
          } else if (state is splash_state.SplashNavigateToLogin) {
            navigatorKey.currentContext?.go('/login');
          } else if (state is splash_state.SplashNavigateToOnboarding) {
            navigatorKey.currentContext?.go('/onboard');
          } else if (state is splash_state.SplashError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: Scaffold(
          backgroundColor: Color(AppColors.darkPrimary),

          body: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background pattern
                Positioned(
                  top: -MediaQuery.of(context).size.height * 0.05,
                  child: SvgPicture.asset(
                    'assets/svgs/splash_pattern.svg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .7,
                  ),
                ),

                // Centered logo
                Center(
                  child: SvgPicture.asset(
                    'assets/svgs/logo.svg',
                    width: 150,
                    height: 150,
                  ),
                ),

                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 50,
                  child: CupertinoActivityIndicator(
                    color: theme.scaffoldBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
