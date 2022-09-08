import 'package:flutter/material.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/core/constant.dart';
import 'package:mono_ui/core/routes_manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/core/values_manager.dart';
import 'package:mono_ui/features/onBoarding/presentation/widget/widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  var pageController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p10 * 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSize.s10 * 33,
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: pageController,
                  itemBuilder: (context, index) =>
                      buildOnBoardingItem(AppStrings.boarding[index], context),
                  itemCount: AppStrings.boarding.length,
                  onPageChanged: (index) {
                    if (index == AppStrings.boarding.length - 1) {
                      isLast = true;
                    } else {
                      isLast = false;
                    }
                  }),
            ),
            SmoothPageIndicator(
              controller: pageController,
              effect: SwapEffect(
                dotHeight: AppSize.s10,
                dotWidth: AppSize.s10,
                spacing: AppSize.s10,
                dotColor: ColorManager.grey1,
                activeDotColor: ColorManager.activeDotColor,
              ),
              count: AppStrings.boarding.length,
            ),
            defaultButton(
              onPressedFunction: () {
                if (isLast) {
                  navigateAndReplacementNamed(context, Routes.loginRoute);
                } else {
                  pageController.nextPage(
                    duration: const Duration(
                        milliseconds: AppConstants.dotsAnimationTime),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
                }
              },
              text: 'continue',
              context,
            ),
          ],
        ),
      ),
    );
  }

 
}
