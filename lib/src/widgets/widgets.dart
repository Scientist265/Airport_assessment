import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

Widget svgIcon({required String iconPath, double? width, double? height}) {
  return SvgPicture.asset(
    iconPath,
    width: width ?? 24.0,
    height: height ?? 24,
  );
}
