import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/pop_button.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(children: [
              Text(
                "My Flights",
                style: AppTextStyle.kHeaderTextStyle,
              ),
              gapW12,
              const CircleAvatar(
                  radius: 8,
                  backgroundColor: AppColors.darkWhiteColor,
                  child: PopButton())
            ]),
            Row(children: [
              svgIcon(
                iconPath: AppAssets.search,
              ),
              gapW32,
              svgIcon(
                iconPath: AppAssets.add,
              )
            ])
          ],
        )
      ],
    );
  }
}
