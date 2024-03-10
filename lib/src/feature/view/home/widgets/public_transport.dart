import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class PublicTransport extends StatelessWidget {
  const PublicTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.h),
          border: Border.all(color: AppColors.darkWhiteColor, width: 1),
          boxShadow: const [
            BoxShadow(
                color: AppColors.darkWhiteColor,
                spreadRadius: 1,
                blurRadius: 0.1)
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Public Transport",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph12,
          PublicServiceWidget(
              iconPath: AppAssets.metro,
              serviceName: "Metro",
              time: "6am-10pm"),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          PublicServiceWidget(
              iconPath: AppAssets.bus,
              serviceName: "Bus",
              time: "available 24hrs"),
        ],
      ),
    );
  }
}

class PublicServiceWidget extends StatelessWidget {
  const PublicServiceWidget({
    super.key,
    required this.iconPath,
    required this.serviceName,
    required this.time,
  });
  final String iconPath, serviceName, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            svgIcon(iconPath: iconPath, height: 22),
            gapW16,
            Text(
              serviceName,
              style: AppTextStyle.kSubHeadTexStyle.copyWith(fontSize: 20),
            )
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  time,
                  style: AppTextStyle.kPrimaryTextStyle
                      .copyWith(color: AppColors.darkGreyColor),
                ),
                gapW12,
                svgIcon(iconPath: AppAssets.arrow, width: 16, height: 16)
              ],
            ))
      ],
    );
  }
}
