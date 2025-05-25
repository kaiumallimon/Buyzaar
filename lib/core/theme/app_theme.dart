import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData theme() => ThemeData(
    textTheme: GoogleFonts.interTextTheme(),
    useMaterial3: true,
    primaryColor: CupertinoColors.activeBlue,
    scaffoldBackgroundColor: Color(AppColors.lightPrimary),
  );
}
