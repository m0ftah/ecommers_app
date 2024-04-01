import 'package:e_commers_app/common/styles/spacing_styles.dart';
import 'package:e_commers_app/common/widgets/login_singup/form_divider.dart';
import 'package:e_commers_app/common/widgets/login_singup/social_bottoms.dart';
import 'package:e_commers_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commers_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commers_app/utils/constants/sizes.dart';
import 'package:e_commers_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Login Header
              LoginHeader(),

              /// Form
              LoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith,
              ),

              SizedBox(
                height: TSizes.spaceBtwSections - 10,
              ),

              /// Footer
              SocialBottom()
            ],
          ),
        ),
      ),
    );
  }
}
