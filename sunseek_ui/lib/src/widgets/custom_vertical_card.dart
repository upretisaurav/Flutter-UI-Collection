import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/constants/colors.dart';
import 'package:sunseek_ui/src/config/theme/app_text_styles.dart';

class CustomBlackAndWhiteCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomBlackAndWhiteCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 200,
        constraints: const BoxConstraints(
          minHeight: 180,
          maxWidth: 250,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.pitchBlack : AppColors.grainWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 8.0,
            right: 8.0,
            bottom: 15.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(height: 15),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 180,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.cardTitle(isSelected: isSelected),
                ),
              ),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 180,
                ),
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.cardSubtitle(isSelected: isSelected),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
