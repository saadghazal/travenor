import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/auth/otp_verification_screen.dart';
import 'package:travenor/utils/routing_animation.dart';

import '../../utils/app_theme.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
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
                  text: 'Forgot Password',
                  size: 26,
                ),
                SizedBox(
                  height: 12.h,
                ),
                AppTheme.regularText(
                  text: 'Enter your email account to reset\nyour password',
                  size: 16,
                  textColor: AppTheme.appGrey,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                AppTextField(label: 'Enter your email', controller: emailController),
                SizedBox(
                  height: 40.h,
                ),
                AppButton(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => OTPVerificationScreen()));
                  },
                  label: 'Reset Password',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
