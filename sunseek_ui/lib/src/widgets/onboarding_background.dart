import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/constants/colors.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.onBoardingBlue,
            AppColors.onBoardingLightBlue,
            AppColors.onBoardingLightYellow,
            AppColors.onBoardingYellow,
          ],
        ),
      ),
    );
  }
}
