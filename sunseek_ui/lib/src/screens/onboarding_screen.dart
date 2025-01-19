import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/constants/assets.dart';
import 'package:sunseek_ui/src/screens/age_selection_screen.dart';
import 'package:sunseek_ui/src/screens/skin_type_screen.dart';
import 'package:sunseek_ui/src/widgets/custom_button.dart';
import 'package:sunseek_ui/src/widgets/onboarding_background.dart';
import 'package:sunseek_ui/src/widgets/onboarding_header.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  late int totalPages = pageContent.length;

  final List<Widget> pageContent = [
    AgeSelectionScreen(),
    SkinTypeScreen(),
  ];

  void nextPage() {
    if (currentPage < totalPages - 1) {
      setState(() {
        currentPage++;
      });
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      setState(() {
        currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingBackground(),
          Padding(
            padding: const EdgeInsets.only(
              top: 70.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                OnboardingHeader(
                  currentPage: currentPage,
                  totalPages: totalPages,
                  onPreviousPage: previousPage,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: Column(
                      key: ValueKey<int>(currentPage),
                      children: [
                        pageContent[currentPage],
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                CustomButton(
                  btnColor: Colors.black,
                  btnText: currentPage == totalPages - 1 ? "Finish" : "Next",
                  btnImage: null,
                  suffixImage: AppImage.arrowRight,
                  onPressed: nextPage,
                  txtColor: Colors.white,
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
