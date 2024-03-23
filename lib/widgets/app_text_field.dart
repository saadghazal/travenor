import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.label,
    required this.controller,
    this.isPassword = false,
    super.key,
  });
  final TextEditingController controller;
  final String label;
  final bool isPassword;

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
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
          hintStyle: TextStyle(
            fontFamily: 'SFUI',
            color: AppTheme.hintTextColor,
          ),
        ),
      ),
    );
  }
}
