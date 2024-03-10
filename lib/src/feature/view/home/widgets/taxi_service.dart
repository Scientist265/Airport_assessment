import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';

class TaxiService extends StatelessWidget {
  const TaxiService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration:cardDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Taxi Service",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Service(
                companyLogo: AppAssets.uber,
              ),
              Service(
                companyLogo: AppAssets.careem,
              ),
              Service(
                companyLogo: AppAssets.yango,
              ),
            ],
          ),
          gaph12,
          Row(
            children: [
              Service(
                companyLogo: AppAssets.blacklane,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Service extends StatelessWidget {
  const Service({
    super.key,
    required this.companyLogo,
  });
  final String companyLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92.w,
      // height: 70.h,
      margin: const EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(5.h),
          border: Border.all(
            color: AppColors.darkWhiteColor,
            width: 0.9,
          ),
          boxShadow: const [
            BoxShadow(
                color: AppColors.darkWhiteColor,
                spreadRadius: 1,
                blurRadius: 0.1)
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(companyLogo),
          gaph12,
          Text(
            "\$\$\$\$\$",
            style: AppTextStyle.kPrimaryTextStyle
                .copyWith(color: AppColors.darkGreyColor),
          ),
        ],
      ),
    );
  }
}
