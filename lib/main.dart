import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      ensureScreenSize: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Travenor',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Scaffold(
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
          ),
        );
      },
    );
  }
}
