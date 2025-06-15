import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    this.height,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.isLoading = false,
    this.image,
    this.isOutlined = false,
    this.elevation,
  });

  final double width;
  final double? height;
  final String text;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final bool isLoading;
  final String? image;
  final bool isOutlined;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(AppColors.darkPrimary),
          foregroundColor: foregroundColor ?? Color(AppColors.lightPrimary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: elevation ?? 0,
          side: isOutlined
              ? BorderSide(
                  color: Color(AppColors.buttonBorderColor),
                  width: 1.5,
                )
              : BorderSide.none,
        ),
        child: isLoading
            ? CupertinoActivityIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  image != null
                      ? Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SvgPicture.asset(
                            image!,
                            height: 24,
                            width: 24,
                          ),
                        )
                      : const SizedBox.shrink(),

                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: foregroundColor ?? Color(AppColors.lightPrimary),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        icon,
                        color: foregroundColor ?? Color(AppColors.lightPrimary),
                        size: 20,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
