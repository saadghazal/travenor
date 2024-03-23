import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({required this.onTap, required this.label, super.key});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppTheme.mainColor,
        ),
        alignment: Alignment.center,
        child: AppTheme.semiBoldText(
          text: label,
          size: 16,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
