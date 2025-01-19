import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunseek_ui/src/config/constants/colors.dart';

class AgeCard extends StatelessWidget {
  final String age;
  final bool isSelected;
  final VoidCallback onTap;

  const AgeCard({
    super.key,
    required this.age,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.pitchBlack : AppColors.grainWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Text(
                age,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
