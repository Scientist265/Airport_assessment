import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class ContactAirport extends StatelessWidget {
  const ContactAirport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Airport",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph16,
          ContactAirportListTile(title: "Police", onTap: () {}),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          ContactAirportListTile(title: "Lost and found", onTap: () {}),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          ContactAirportListTile(title: "Transport", onTap: () {}),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          ContactAirportListTile(title: "Head office", onTap: () {}),
        ],
      ),
    );
  }
}

class ContactAirportListTile extends StatelessWidget {
  const ContactAirportListTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.kSubHeadTexStyle,
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.darkWhiteColor,
                borderRadius: BorderRadius.circular(18.h),
              ),
              child: svgIcon(iconPath: AppAssets.callBlack),
            ),
          ),
        ],
      ),
    );
  }
}
