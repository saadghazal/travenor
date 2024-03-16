import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/onboarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24BAEC),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/travenor_logo.png',
                height: 200.h,
                width: 200.w,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Travenor',
                style: TextStyle(
                  fontFamily: 'Geo',
                  fontSize: 34.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
