import 'package:flutter/material.dart';
import 'package:sunseek_ui/src/config/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final Color txtColor;
  final String? btnImage;
  final String? suffixImage;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key,
      required this.btnColor,
      required this.btnText,
      required this.btnImage,
      required this.onPressed,
      required this.txtColor,
      this.suffixImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (btnImage == null)
                ? Container()
                : Image.asset(
                    btnImage!,
                  ),
            const SizedBox(
              width: 5,
            ),
            Text(
              btnText,
              style: AppTextStyles.buttonText.copyWith(
                color: txtColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            (suffixImage == null)
                ? Container()
                : Image.asset(
                    suffixImage!,
                  ),
          ],
        ),
      ),
    );
  }
}
