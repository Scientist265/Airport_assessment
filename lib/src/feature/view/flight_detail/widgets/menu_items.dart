import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({
    super.key,
  });

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  bool isChoose = false;
  void selectFlight() {
    isChoose = !isChoose;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              selectFlight();
              setState(() {
                // isChoose = true;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                svgIcon(iconPath: AppAssets.me),
                gapW12,
                Text(
                  "My Flights",
                  style: AppTextStyle.kSubHeadTexStyle,
                ),
                const Spacer(),
                isChoose == true
                    ? const Icon(
                        Icons.check,
                        color: AppColors.blueColor,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          const Divider(
            thickness: 0.8,
            color: AppColors.darkWhiteColor,
          ),
          GestureDetector(
            onTap: () {
              selectFlight();
              setState(() {});
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                svgIcon(iconPath: AppAssets.friends),
                gapW12,
                Text(
                  "Friend's flights",
                  style: AppTextStyle.kSubHeadTexStyle,
                ),
                const Spacer(),
                isChoose == false
                    ? const Icon(
                        Icons.check,
                        color: AppColors.blueColor,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          )
        ],
      ),
    );
  }
}
