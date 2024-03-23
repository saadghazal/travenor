import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/auth/widgets/social_login_widget.dart';
import 'package:travenor/utils/app_theme.dart';
import 'package:travenor/widgets/app_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 92.h,
                      ),
                      AppTheme.semiBoldText(
                        text: 'Sign up now',
                        size: 26,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      AppTheme.regularText(
                        text: 'Please fill the details and create account',
                        size: 16,
                        textColor: AppTheme.appGrey,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        height: 56.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: AppTheme.boxBackgroundColor,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const TextField(
                          cursorColor: AppTheme.mainColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              fontFamily: 'SFUI',
                              color: AppTheme.hintTextColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Container(
                        height: 56.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: AppTheme.boxBackgroundColor,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const TextField(
                          cursorColor: AppTheme.mainColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontFamily: 'SFUI',
                              color: AppTheme.hintTextColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Container(
                        height: 56.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: AppTheme.boxBackgroundColor,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const TextField(
                          cursorColor: AppTheme.mainColor,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: Icon(
                              Icons.visibility_off_rounded,
                              color: AppTheme.hintTextColor,
                            ),
                            hintStyle: TextStyle(
                              fontFamily: 'SFUI',
                              color: AppTheme.hintTextColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AppTheme.mediumText(
                            text: 'Password must be at least 8 characters',
                            size: 14,
                            textColor: AppTheme.appGrey),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      AppButton(
                        onTap: () {},
                        label: 'Sign Up',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AppTheme.regularText(
                        text: 'Or',
                        size: 14,
                        textColor: AppTheme.appGrey,
                      ),
                    ],
                  ),
                ),
                const SocialLoginWidget(),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
