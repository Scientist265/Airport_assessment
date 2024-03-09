import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';

class AppConstant {
  static List<Tab> getHomeScreenTabs(int index) {
    return [
      Tab(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color:
                  index == 0 ? AppColors.blackColor : AppColors.darkWhiteColor,
              borderRadius: BorderRadius.circular(18.h)),
          child: Text(
            "Transport",
            style: AppTextStyle.kPrimaryTextStyle.copyWith(
              color: index == 0 ? AppColors.whiteColor : AppColors.blackColor,
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color:
                  index == 1 ? AppColors.blackColor : AppColors.darkWhiteColor,
              borderRadius: BorderRadius.circular(18.h)),
          child: Text(
            "Terminal",
            style: AppTextStyle.kPrimaryTextStyle.copyWith(
              color: index == 1 ? AppColors.whiteColor : AppColors.blackColor,
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color:
                  index == 2 ? AppColors.blackColor : AppColors.darkWhiteColor,
              borderRadius: BorderRadius.circular(18.h)),
          child: Text(
            "Forex",
            style: AppTextStyle.kPrimaryTextStyle.copyWith(
              color: index == 2 ? AppColors.whiteColor : AppColors.blackColor,
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: index == 3 ? AppColors.blackColor : AppColors.whiteColor,
              borderRadius: BorderRadius.circular(18.h)),
          child: Text(
            "Contact info",
            style: AppTextStyle.kPrimaryTextStyle.copyWith(
              color: index == 3 ? AppColors.whiteColor : AppColors.blackColor,
            ),
          ),
        ),
      ),
    ];
  }
}
