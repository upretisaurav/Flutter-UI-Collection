import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/constants/assets.dart';
import 'package:sunseek_ui/src/config/constants/colors.dart';
import 'package:sunseek_ui/src/config/constants/strings.dart';
import 'package:sunseek_ui/src/config/theme/app_text_styles.dart';
import 'package:sunseek_ui/src/screens/onboarding_screen.dart';
import 'package:sunseek_ui/src/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.landingPurple,
                  AppColors.landingLightPurple,
                  AppColors.landingLightOrange,
                  AppColors.landingOrange,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AppImage.circleImage,
                  height: 200,
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  AppStrings.loginMessage,
                  style: AppTextStyles.heading,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  btnColor: Colors.white,
                  btnText: AppStrings.continueWithApple,
                  btnImage: AppImage.appleLogo,
                  onPressed: () {},
                  txtColor: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppStrings.or,
                      style: AppTextStyles.buttonText,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  btnColor: Colors.black,
                  btnText: AppStrings.continueWithEmail,
                  btnImage: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ),
                    );
                  },
                  txtColor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: AppStrings.byAgreeingText,
                          style: AppTextStyles.bodyText,
                        ),
                        TextSpan(
                          text: AppStrings.termsOfService,
                          style: AppTextStyles.linkText,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint("Terms of services tapped!");
                            },
                        ),
                        TextSpan(
                          text: ' and ',
                          style: AppTextStyles.bodyText,
                        ),
                        TextSpan(
                          text: AppStrings.privaryPolicy,
                          style: AppTextStyles.linkText,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint("Privacy policy tapped!");
                            },
                        ),
                        TextSpan(
                          text: AppStrings.personalData,
                          style: AppTextStyles.bodyText,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
