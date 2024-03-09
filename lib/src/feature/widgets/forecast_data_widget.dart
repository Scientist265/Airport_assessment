import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
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


