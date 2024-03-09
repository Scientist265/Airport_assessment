import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';

BoxDecoration cardDecoration() {
  return BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(12.h),
      border: Border.all(color: AppColors.darkWhiteColor, width: 1),
      boxShadow: const [
        BoxShadow(
          color: AppColors.darkWhiteColor,
          spreadRadius: 1,
          blurRadius: 0.1,
        ),
      ]);
}
