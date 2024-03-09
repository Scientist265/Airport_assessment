import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';

class AppTextStyle {
  AppTextStyle._();
  static TextStyle kHeaderTextStyle = TextStyle(
      fontSize: 20.sp,
      fontFamily: "UberMove",
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor);
  static TextStyle kSubtitleTextStyle = TextStyle(
    fontSize: 12.sp,
    fontFamily: "Apple Color Emoji",
    fontWeight: FontWeight.w600,
    color: AppColors.darkWhiteColor,
  );
  static TextStyle kPrimaryTextStyle = TextStyle(
    fontSize: 14.sp,
    fontFamily: "UberMove",
    fontWeight: FontWeight.w500,
  );
  static TextStyle kSubHeadTexStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: "UberMove",
    fontWeight: FontWeight.w500,
  );
  static TextStyle kButtonTextStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: "UberMove",
    fontWeight: FontWeight.bold,
  );
}
