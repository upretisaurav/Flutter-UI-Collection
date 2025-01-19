import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingHeader extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onPreviousPage;

  const OnboardingHeader({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPreviousPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPreviousPage,
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: (currentPage + 1) / totalPages,
              backgroundColor: Colors.grey[600],
              color: Colors.black,
              minHeight: 3,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          "${currentPage + 1} / $totalPages",
          style: GoogleFonts.spaceMono(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
