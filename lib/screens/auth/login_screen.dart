import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/auth/sign_up_screen.dart';
import 'package:travenor/screens/auth/widgets/social_login_widget.dart';
import 'package:travenor/utils/app_theme.dart';
import 'package:travenor/widgets/app_button.dart';

import '../../utils/routing_animation.dart';
import '../../widgets/app_text_field.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
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
                      AppTextField(
                        label: 'Email',
                        controller: emailController,
                      ),
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
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              RoutingAnimation.downToUp(
                                screen: ForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: AppTheme.mediumText(
                            text: 'Forget Password?',
                            size: 14,
                            textColor: AppTheme.mainOrange,
                          ),
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
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
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
