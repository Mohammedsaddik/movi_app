import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custom_bottom_signup.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custom_list_generate.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custom_outline_onboarding_image.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/green_positioned_widget.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/pink_positoned_widget.dart';
import 'package:movi_mobile_app/core/app_router.dart';
import 'package:movi_mobile_app/core/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenHight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        width: ScreenWidth,
        height: ScreenHight,
        child: Stack(
          children: [
            pinkpsitioned(ScreenHight: ScreenHight),
            GreenPositioned(ScreenHight: ScreenHight),
            Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: ScreenHight * 0.07,
                    ),
                    CustomOutlineOnBoardingImage(ScreenWidth: ScreenWidth),
                    const SizedBox(
                      height: 21.0,
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Watch movies in Virtual Reality',
                        textAlign: TextAlign.center,
                        style: Styles.textStyle34.copyWith(),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        'Download and watch offline  wherever you are',
                        textAlign: TextAlign.center,
                        style: Styles.textStyle16
                            .copyWith(fontWeight: FontWeight.w100),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        GoRouter.of(context).push(AppRouter.kHomeView);
                      },
                        child: const CustomBottomSignUp()
                    ),
                    const Spacer(),
                    const CustomListGenerate(),
                    const SizedBox(
                      height: 57.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
