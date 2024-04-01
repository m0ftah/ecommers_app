import 'package:e_commers_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commers_app/features/authentication/screens/onboarding/widgets/onboardin_dot_navigation.dart';
import 'package:e_commers_app/features/authentication/screens/onboarding/widgets/onboardind_skip.dart';
import 'package:e_commers_app/features/authentication/screens/onboarding/widgets/onboarding_next_bottom.dart';
import 'package:e_commers_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commers_app/utils/constants/image_strings.dart';
import 'package:e_commers_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3)
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardindNextBottom()
        ],
      ),
    );
  }
}
