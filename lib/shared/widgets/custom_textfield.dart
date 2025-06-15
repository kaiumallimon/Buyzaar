import 'package:buyzaar/core/constants/sizes.dart';
import 'package:buyzaar/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.height,
    this.width,
    required this.hintText,
    this.label,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.borderRadius = 8.0,
  });

  final double? height;
  final double? width;
  final String hintText;
  final String? label;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final double? borderRadius;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: TextStyle(
              color: Color(AppColors.darkPrimary),
              fontSize: 16,
              fontFamily: GoogleFonts.sora().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        if (widget.label != null)
          const SizedBox(height: 8.0), // Spacing after label
        Container(
          width: widget.width ?? double.infinity,
          height: widget.height ?? 55.0,
          decoration: BoxDecoration(
            border: Border.all(color: Color(AppColors.borderColor), width: 1.5),
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.textFieldSidePadding,
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    keyboardType: widget.keyboardType ?? TextInputType.text,
                    obscureText: widget.obscureText && !_isPasswordVisible,
                    cursorColor: Color(AppColors.darkPrimary),
                    style: TextStyle(
                      color: Color(AppColors.darkPrimary),
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(AppColors.hintTextColor),
                      ),
                    ),
                  ),
                ),
                if (widget.obscureText)
                  IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Color(AppColors.hintTextColor),
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
