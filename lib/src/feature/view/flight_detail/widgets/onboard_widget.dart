import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class OnboardTimerWidget extends StatelessWidget {
  const OnboardTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth,
      padding: EdgeInsets.all(14.h),
      decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(12.h),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 0.1,
              blurRadius: 0.1,
              color: AppColors.yellowColor,
            )
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Boarding closes in 00:30",
                style: AppTextStyle.kSubHeadTexStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              gaph4,
              Text(
                "On time",
                style: AppTextStyle.kSubtitleTextStyle.copyWith(
                  color: AppColors.darkGreyColor,
                ),
              ),
            ],
          ),
          Card(
            elevation: 0.1,
            color: AppColors.yellowColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5),
              child: Row(
                children: [
                  svgIcon(iconPath: AppAssets.indigo, width: 12, height: 12),
                  gapW8,
                  Text(
                    "T20",
                    style: AppTextStyle.kButtonTextStyle
                        .copyWith(color: AppColors.blackColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

