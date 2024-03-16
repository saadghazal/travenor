import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travenor/screens/auth/login_screen.dart';
import 'package:travenor/screens/onboarding/widgets/on_boarding_widget.dart';
import 'package:travenor/services/storage_service.dart';
import 'package:travenor/utils/app_theme.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController()..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              height: 678.h,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                children: const [
                  OnBoardingWidget(
                    title: 'Life is short and the\nworld is',
                    description:
                        'At Friends tours and travel, we customize\nreliable and trutworthy educational tours to\ndestinations all over the world',
                    coloredText: 'wide',
                    image: 'assets/images/on_boarding_1.png',
                  ),
                  OnBoardingWidget(
                    description:
                        'To get the best of your adventure you just\nneed to leave and go where you like. we are\nwaiting for you',
                    image: 'assets/images/on_boarding_2.png',
                    title: 'It’s a big world\nout there go',
                    coloredText: 'explore',
                  ),
                  OnBoardingWidget(
                    description:
                        'To fully embrace your adventure,\nall you have to dois set off and explore wherever\nyour heart desires. We eagerly await your arrival!',
                    image: 'assets/images/on_boarding_3.png',
                    title: 'People don’t take trips, trips take',
                    coloredText: 'people',
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 7.h,
                  width: currentPage == 0 ? 35.w : 13.w,
                  decoration: BoxDecoration(
                    color: currentPage == 0 ? AppTheme.mainColor : AppTheme.secondaryMainColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 7.h,
                  width: currentPage == 1
                      ? 35.w
                      : currentPage == 2
                          ? 6.w
                          : 13.w,
                  decoration: BoxDecoration(
                    color: currentPage == 1 ? AppTheme.mainColor : AppTheme.secondaryMainColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 7.h,
                  width: currentPage == 2 ? 35.w : 6.w,
                  decoration: BoxDecoration(
                    color: currentPage == 2 ? AppTheme.mainColor : AppTheme.secondaryMainColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                if (currentPage == 2) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                    (route) => false,
                  );
                  StorageService.setNotFirstTime();
                } else {
                  currentPage++;
                  pageController.animateToPage(
                    currentPage,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.linear,
                  );
                  setState(() {});
                }
              },
              child: Container(
                height: 56.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppTheme.mainColor,
                ),
                alignment: Alignment.center,
                child: AppTheme.semiBoldText(
                  text: currentPage == 2 ? 'Get Started' : 'Next',
                  size: 16,
                  textColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
