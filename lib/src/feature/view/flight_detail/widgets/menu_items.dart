import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key, this.isSelected});
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              svgIcon(iconPath: AppAssets.me),
              gapW12,
              Text(
                "My Flights",
                style: AppTextStyle.kSubHeadTexStyle,
              ),
              isSelected == true
                  ? const Icon(
                      Icons.check,
                    )
                  : const SizedBox.shrink()
            ],
          ),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              svgIcon(iconPath: AppAssets.friends),
              gapW12,
              Text(
                "Friend's flights",
                style: AppTextStyle.kSubHeadTexStyle,
              ),
              isSelected == true
                  ? const Icon(
                      Icons.check,
                    )
                  : const SizedBox.shrink()
            ],
          )
        ],
      ),
    );
  }
}
