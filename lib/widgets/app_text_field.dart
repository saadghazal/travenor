import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.isOTP = false,
    super.key,
  });
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final bool isOTP;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppTheme.boxBackgroundColor,
      ),
      alignment: Alignment.centerLeft,
      child: TextField(
        controller: controller,
        cursorColor: AppTheme.mainColor,
        obscureText: isPassword,
        textAlign: isOTP ? TextAlign.center : TextAlign.start,
        style: TextStyle(
          fontWeight: isOTP ? FontWeight.w600 : FontWeight.normal,
          fontSize: isOTP ? 18.sp : 16.sp,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
          suffixIcon: isPassword
              ? Icon(
                  Icons.visibility_off_rounded,
                  color: AppTheme.hintTextColor,
                )
              : null,
          hintStyle: TextStyle(
            fontFamily: 'SFUI',
            color: AppTheme.hintTextColor,
          ),
        ),
      ),
    );
  }
}
