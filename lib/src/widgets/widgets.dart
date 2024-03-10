import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:utlpal_ravi_assesment/src/utils/constants/colors.dart";

Widget svgIcon(
    {required String iconPath, double? width, double? height, Color? color}) {
  return SvgPicture.asset(
    iconPath,
    // ignore: deprecated_member_use
    color: color ?? AppColors.blackColor,
    width: width ?? 20.0,
    height: height ?? 20,
  );
}
