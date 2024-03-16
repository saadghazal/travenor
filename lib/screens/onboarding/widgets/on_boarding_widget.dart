import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_theme.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    required this.description,
    required this.image,
    required this.title,
    required this.coloredText,
    super.key,
  });
  final String image;
  final String title;
  final String coloredText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 444.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontFamily: 'Geo',
              color: Colors.black,
              fontSize: 30.sp,
            ),
            children: [
              TextSpan(text: '$title '),
              TextSpan(
                text: coloredText,
                style: TextStyle(
                  color: AppTheme.mainOrange,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 19.3.h,
        ),
        Text(
          description,
          style: TextStyle(
            fontFamily: 'Gill',
            color: AppTheme.appGrey,
            fontSize: 16.w,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 23.7.h,
        ),
      ],
    );
  }
}
