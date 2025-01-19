import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/constants/strings.dart';
import 'package:sunseek_ui/src/config/theme/app_text_styles.dart';
import 'package:sunseek_ui/src/widgets/age_card.dart';

class AgeSelectionScreen extends StatefulWidget {
  const AgeSelectionScreen({super.key});

  @override
  State<AgeSelectionScreen> createState() => _AgeSelectionScreenState();
}

class _AgeSelectionScreenState extends State<AgeSelectionScreen> {
  String? selectedAge;

  void onAgeSelected(String age) {
    setState(() {
      selectedAge = age;
    });
    debugPrint('Selected age: $age');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.howOldAreYou,
          style: AppTextStyles.bigHeading,
        ),
        const SizedBox(height: 20),
        AgeCard(
          age: AppStrings.seventeenOrYounger,
          isSelected: selectedAge == AppStrings.seventeenOrYounger,
          onTap: () => onAgeSelected(AppStrings.seventeenOrYounger),
        ),
        AgeCard(
          age: AppStrings.eighteenToTwentyFour,
          isSelected: selectedAge == AppStrings.eighteenToTwentyFour,
          onTap: () => onAgeSelected(AppStrings.eighteenToTwentyFour),
        ),
        AgeCard(
          age: AppStrings.twentyFiveToTwentyNine,
          isSelected: selectedAge == AppStrings.twentyFiveToTwentyNine,
          onTap: () => onAgeSelected(AppStrings.twentyFiveToTwentyNine),
        ),
        AgeCard(
          age: AppStrings.thirtyToThirtyFour,
          isSelected: selectedAge == AppStrings.thirtyToThirtyFour,
          onTap: () => onAgeSelected(AppStrings.thirtyToThirtyFour),
        ),
        AgeCard(
          age: AppStrings.thirtyFiveToFortyFour,
          isSelected: selectedAge == AppStrings.thirtyFiveToFortyFour,
          onTap: () => onAgeSelected(AppStrings.thirtyFiveToFortyFour),
        ),
        AgeCard(
          age: AppStrings.fortyFiveToFiftyFour,
          isSelected: selectedAge == AppStrings.fortyFiveToFiftyFour,
          onTap: () => onAgeSelected(AppStrings.fortyFiveToFiftyFour),
        ),
        AgeCard(
          age: AppStrings.fiftyFiveAndOlder,
          isSelected: selectedAge == AppStrings.fiftyFiveAndOlder,
          onTap: () => onAgeSelected(AppStrings.fiftyFiveAndOlder),
        ),
      ],
    );
  }
}
