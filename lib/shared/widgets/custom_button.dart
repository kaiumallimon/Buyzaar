import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  });

  final double width;
  final double? height;
  final String text;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(AppColors.darkPrimary),
          foregroundColor: Color(AppColors.lightPrimary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: isLoading
            ? CupertinoActivityIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Color(AppColors.lightPrimary),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        icon,
                        color: Color(AppColors.lightPrimary),
                        size: 20,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
