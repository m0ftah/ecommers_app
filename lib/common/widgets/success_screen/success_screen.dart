import 'package:e_commers_app/common/styles/spacing_styles.dart';
import 'package:e_commers_app/utils/constants/sizes.dart';
import 'package:e_commers_app/utils/constants/text_strings.dart';
import 'package:e_commers_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Title and SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Bottons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text(TTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
