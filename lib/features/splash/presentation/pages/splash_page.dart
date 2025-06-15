import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/features/splash/presentation/providers/splash_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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

    final splashProvider = Provider.of<SplashProvider>(context, listen: false);

    Future.delayed(Duration(seconds: 2), () async{
      if (context.mounted) {
        await splashProvider.navigateToHome(context);
      }
    });

    return Scaffold(
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
    );
  }
}
