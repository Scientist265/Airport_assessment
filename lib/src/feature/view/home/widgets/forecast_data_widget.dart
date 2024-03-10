import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/app_strings.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class ForecastDataWidget extends StatelessWidget {
  const ForecastDataWidget({
    super.key,
    required this.data,
    required this.desc,
    required this.iconPath,
  });
  final String data, desc, iconPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgIcon(iconPath: iconPath),
          gaph4,
          Text(
            data,
            style: AppTextStyle.kSubHeadTexStyle,
          ),
          gaph4,
          Text(
            desc,
            style: AppTextStyle.kSubtitleTextStyle.copyWith(
              fontSize: 11,
              color: const Color(0xff909090),
            ),
          )
        ],
      ),
    );
  }
}

class ForecastDataButtons extends StatelessWidget {
  const ForecastDataButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              svgIcon(
                  iconPath: AppAssets.direction,
                  color: AppColors.blueColor),
              gapW8,
              Text(
                "Get direction",
                style: AppTextStyle.kButtonTextStyle
                    .copyWith(color: AppColors.blackColor),
              ),
            ],
          ),
        ),
        Text("|", style: AppTextStyle.kPrimaryTextStyle),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              svgIcon(
                  iconPath: AppAssets.callBlue,
                  color: AppColors.blueColor),
              gapW8,
              Text(
                "Call airport",
                style: AppTextStyle.kButtonTextStyle
                    .copyWith(color: AppColors.blackColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class FlightDetailCard extends StatelessWidget {
  const FlightDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      width: AppConst.kWidth,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(cityView), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              color: AppColors.whiteColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ForecastDataWidget(
                      data: "19 C",
                      desc: "Cloudy",
                      iconPath: AppAssets.cloud,
                    ),
                    ForecastDataWidget(
                      data: "30 Jan",
                      desc: "Mon",
                      iconPath: AppAssets.calendar,
                    ),
                    ForecastDataWidget(
                      data: "8:45 PM",
                      desc: "GMT",
                      iconPath: AppAssets.time,
                    ),
                    ForecastDataWidget(
                      data: "AED",
                      desc: "1\$ -3.67AED",
                      iconPath: AppAssets.currency,
                    )
                  ],
                ),
                gaph8,
                const Divider(
                  thickness: 0.5,
                  color: AppColors.darkWhiteColor,
                ),
                const ForecastDataButtons(),
              ],
            ),
          )
        ],
      ),
    );
  }
}


