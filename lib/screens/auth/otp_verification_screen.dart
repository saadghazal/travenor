import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: true,
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: AppTheme.boxBackgroundColor,
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                AppTheme.semiBoldText(
                  text: 'OTP Verification',
                  size: 26,
                ),
                SizedBox(
                  height: 12.h,
                ),
                AppTheme.regularText(
                  text: 'Please check your email www.uihut@gmail.com\nto see the verification code',
                  size: 16,
                  textColor: AppTheme.appGrey,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppTheme.semiBoldText(
                    text: 'OTP Code',
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        label: '0',
                        isOTP: true,
                        controller: TextEditingController(),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Expanded(
                      child: AppTextField(
                        label: '0',
                        isOTP: true,
                        controller: TextEditingController(),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Expanded(
                      child: AppTextField(
                        label: '0',
                        isOTP: true,
                        controller: TextEditingController(),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Expanded(
                      child: AppTextField(
                        label: '0',
                        isOTP: true,
                        controller: TextEditingController(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                AppButton(
                  onTap: () {},
                  label: 'Verify',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
