import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:buyzaar/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // body
            buildExtendedBody(h, w),

            // button at the bottom
            _buildGetStartedPanel(h, theme, w),
          ],
        ),
      ),
    );
  }

  Expanded buildExtendedBody(double h, double w) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // background pattern
          _buildBackgroundPattern(h, w),

          // text
          _buildBackgroundText(),

          // image of the model
          _buildModelImage(),
        ],
      ),
    );
  }

  // model image
  Positioned _buildModelImage() {
    return Positioned(
      bottom: -100,
      right: 0,
      child: Image.asset('assets/images/landing_model.png', fit: BoxFit.cover),
    );
  }

  // background text
  Positioned _buildBackgroundText() {
    return Positioned(
      top: 0,
      left: 0,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Define\nyourself in\nyour unique\nway.',
          style: GoogleFonts.inter(
            fontSize: 60,
            fontWeight: FontWeight.w700,
            height: .95,
            letterSpacing: -1.2,
          ),
        ),
      ),
    );
  }

  // background pattern
  Positioned _buildBackgroundPattern(double h, double w) {
    return Positioned(
      bottom: -h * 0.15,
      child: SvgPicture.asset(
        'assets/svgs/landing_pattern.svg',
        width: w,
        height: h * .85,
      ),
    );
  }

  // get started panel at the bottom
  Container _buildGetStartedPanel(double h, ThemeData theme, double w) {
    return Container(
      height: h * 0.12,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor.withOpacity(.7),
        border: Border(
          top: BorderSide(color: Color(AppColors.darkPrimary).withOpacity(.1)),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(AppColors.darkPrimary).withOpacity(.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: CustomButton(
        width: w,
        onPressed: () {},
        text: 'Get Started',
        icon: Icons.arrow_forward,
      ),
    );
  }
}
