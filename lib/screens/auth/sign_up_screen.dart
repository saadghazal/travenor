import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/auth/widgets/social_login_widget.dart';
import 'package:travenor/utils/app_theme.dart';
import 'package:travenor/widgets/app_button.dart';
import 'package:travenor/widgets/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
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
                Expanded(
                  child: Column(
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
                      AppTextField(label: 'Name', controller: nameController),
                      SizedBox(
                        height: 24.h,
                      ),
                      AppTextField(label: 'Email', controller: emailController),
                      SizedBox(
                        height: 24.h,
                      ),
                      AppTextField(
                        label: 'Password',
                        controller: passwordController,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AppTheme.mediumText(
                          text: 'Password must be at least 8 characters',
                          size: 14,
                          textColor: AppTheme.appGrey,
                        ),
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
