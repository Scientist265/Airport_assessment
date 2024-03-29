import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.buttonTextColor,
    required this.press,
    this.size,
    this.buttonColor,
    required this.iconPath,
  });
  final String buttonText, iconPath;
  final Color? buttonColor, buttonTextColor;
  final Function() press;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(10.h)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgIcon(iconPath: iconPath, color: AppColors.whiteColor),
            gapW12,
            Text(
              buttonText,
              style: AppTextStyle.kButtonTextStyle.copyWith(
                  color: buttonTextColor ?? AppColors.whiteColor,
                  fontSize: size),
            ),
          ],
        ),
      ),
    );
  }
}
