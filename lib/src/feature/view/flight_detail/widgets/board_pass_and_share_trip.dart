import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class BoardPassAndShareTripWidget extends StatelessWidget {
  const BoardPassAndShareTripWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 0.1,
              color: AppColors.darkWhiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                child: Row(
                  children: [
                    svgIcon(
                        iconPath: AppAssets.currency, height: 16, width: 16),
                    gapW4,
                    Text(
                      "Boarding Pass",
                      style: AppTextStyle.kSubHeadTexStyle,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0.1,
              color: AppColors.darkWhiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.whatsapp,
                      width: 20,
                    ),
                    Text(
                      "Share trip",
                      style: AppTextStyle.kSubHeadTexStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: AppColors.darkWhiteColor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: svgIcon(iconPath: AppAssets.more, width: 16, height: 16),
              )
            ],
          ),
        ),
      ],
    );
  }
}
