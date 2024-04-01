import 'package:e_commers_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commers_app/utils/constants/colors.dart';
import 'package:e_commers_app/utils/constants/sizes.dart';
import 'package:e_commers_app/utils/device/device_utility.dart';
import 'package:e_commers_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardindNextBottom extends StatelessWidget {
  const OnBoardindNextBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() - 10,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black),
        onPressed: () => OnBoardingController.instanse.nextPage(),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
