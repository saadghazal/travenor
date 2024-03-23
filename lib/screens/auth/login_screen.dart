import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travenor/screens/auth/widgets/social_login_widget.dart';
import 'package:travenor/utils/app_theme.dart';
import 'package:travenor/widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        text: 'Sign in now',
                        size: 26,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      AppTheme.regularText(
                        text: 'Please sign in to continue our app',
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
                        child: TextField(
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
                        child: TextField(
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
                        alignment: Alignment.bottomRight,
                        child: AppTheme.mediumText(
                          text: 'ForgetPassword?',
                          size: 14,
                          textColor: AppTheme.mainOrange,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      AppButton(
                        onTap: () {},
                        label: 'Sign In',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'SFUI',
                            fontSize: 14.sp,
                            color: AppTheme.appGrey,
                          ),
                          children: [
                            TextSpan(text: 'Don\'t have an account? '),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.mainOrange,
                              ),
                            )
                          ],
                        ),
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
                SocialLoginWidget(),
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
