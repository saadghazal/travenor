import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/images/f-min.svg',
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFD521),
                Color(0xFFFFD521),
                Color(0xFFF50000),
                Color(0xFFB900B4),
                Color(0xFFB900B4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
              stops: [0.1, 0.15, 0.5, 0.85, 1],
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/images/i.svg',
              height: 30.h,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/images/x.svg',
              height: 20.h,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
