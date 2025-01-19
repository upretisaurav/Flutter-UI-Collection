import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunseek_ui/src/config/constants/assets.dart';
import 'package:sunseek_ui/src/config/constants/strings.dart';
import 'package:sunseek_ui/src/config/theme/app_text_styles.dart';
import 'package:sunseek_ui/src/widgets/custom_vertical_card.dart';

class SkinTypeScreen extends StatefulWidget {
  final Function(String)? onSkinTypeSelected;

  const SkinTypeScreen({
    super.key,
    this.onSkinTypeSelected,
  });

  @override
  State<SkinTypeScreen> createState() => _SkinTypeScreenState();
}

class _SkinTypeScreenState extends State<SkinTypeScreen> {
  String? selectedSkinType;

  void onTypeSelected(String type) {
    setState(() {
      selectedSkinType = type;
    });
    widget.onSkinTypeSelected?.call(type);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.whatBestDescribesYourSkin,
          style: AppTextStyles.bigHeading,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeI,
                  subtitle: AppStrings.typeIDescription,
                  imageUrl: AppImage.typeISkin,
                  isSelected: selectedSkinType == AppStrings.typeI,
                  onTap: () => onTypeSelected(AppStrings.typeI),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeII,
                  subtitle: AppStrings.typeIIDescription,
                  imageUrl: AppImage.typeIISkin,
                  isSelected: selectedSkinType == AppStrings.typeII,
                  onTap: () => onTypeSelected(AppStrings.typeII),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeIII,
                  subtitle: AppStrings.typeIIIDescription,
                  imageUrl: AppImage.typeIIISkin,
                  isSelected: selectedSkinType == AppStrings.typeIII,
                  onTap: () => onTypeSelected(AppStrings.typeIII),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeIV,
                  subtitle: AppStrings.typeIVDescription,
                  imageUrl: AppImage.typeIVSkin,
                  isSelected: selectedSkinType == AppStrings.typeIV,
                  onTap: () => onTypeSelected(AppStrings.typeIV),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeV,
                  subtitle: AppStrings.typeVDescription,
                  imageUrl: AppImage.typeVSkin,
                  isSelected: selectedSkinType == AppStrings.typeV,
                  onTap: () => onTypeSelected(AppStrings.typeV),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBlackAndWhiteCard(
                  title: AppStrings.typeVI,
                  subtitle: AppStrings.typeVIDescription,
                  imageUrl: AppImage.typeVISkin,
                  isSelected: selectedSkinType == AppStrings.typeVI,
                  onTap: () => onTypeSelected(AppStrings.typeVI),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        if (selectedSkinType != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Text(
                  _getDetailedDescription(),
                  style: GoogleFonts.spaceMono(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  _getExample(),
                  style: GoogleFonts.spaceMono(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  String _getDetailedDescription() {
    switch (selectedSkinType) {
      case AppStrings.typeI:
        return AppStrings.typeIDetailedDescription;
      case AppStrings.typeII:
        return AppStrings.typeIIDetailedDescription;
      case AppStrings.typeIII:
        return AppStrings.typeIIIDetailedDescription;
      case AppStrings.typeIV:
        return AppStrings.typeIVDetailedDescription;
      case AppStrings.typeV:
        return AppStrings.typeVDetailedDescription;
      case AppStrings.typeVI:
        return AppStrings.typeVIDetailedDescription;
      default:
        return '';
    }
  }

  String _getExample() {
    switch (selectedSkinType) {
      case AppStrings.typeI:
        return AppStrings.typeIExample;
      case AppStrings.typeII:
        return AppStrings.typeIIExample;
      case AppStrings.typeIII:
        return AppStrings.typeIIIExample;
      case AppStrings.typeIV:
        return AppStrings.typeIVExample;
      case AppStrings.typeV:
        return AppStrings.typeVExample;
      case AppStrings.typeVI:
        return AppStrings.typeVIExample;
      default:
        return '';
    }
  }
}
