import 'package:e_commers_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commers_app/utils/constants/sizes.dart';
import 'package:e_commers_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight() - 10,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBoardingController.instanse.skipPage();
            },
            child: const Text('Skip')));
  }
}
