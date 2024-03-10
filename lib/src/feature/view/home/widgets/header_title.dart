import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dubai Airport-DXB",
          style: AppTextStyle.kHeaderTextStyle,
        ),
        Text(
          "Dubai. 🇦🇪 United Arab Emirates",
          style: AppTextStyle.kSubtitleTextStyle.copyWith(
            color: AppColors.blackColor.withOpacity(
              0.5,
            ),
          ),
        )
      ],
    );
  }
}
