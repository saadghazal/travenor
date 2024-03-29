import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const mainColor = Color(0xFF24BAEC);
  static const secondaryMainColor = Color(0xFFCAEAFF);
  static const mainOrange = Color(0xFFFF7029);
  static const appGrey = Color(0xFF7D848D);
  static const textColor = Color(0xFF1B1E28);
  static const boxBackgroundColor = Color(0xFFF7F7F9);
  static const hintTextColor = Color(0xFF7D848D);
  static Text regularText({
    required String text,
    required double size,
    Color textColor = AppTheme.textColor,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size.sp,
        color: textColor,
      ),
    );
  }

  static Text mediumText({
    required String text,
    required double size,
    Color textColor = AppTheme.textColor,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size.sp,
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static Text semiBoldText({
    required String text,
    required double size,
    Color textColor = AppTheme.textColor,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size.sp,
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text boldText({
    required String text,
    required double size,
    Color textColor = AppTheme.textColor,
    TextAlign textAlign = TextAlign.left,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size.sp,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
