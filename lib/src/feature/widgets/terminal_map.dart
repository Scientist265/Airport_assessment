import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/self_parking.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/app_strings.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';

class TerminalMap extends StatelessWidget {
  const TerminalMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: cardDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Terminal Map",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph16,
          const Row(
            children: [
              TBlock(
                text: 'T1',
                isSelected: true,
              ),
              gapW16,
              TBlock(text: "T2"),
              gapW16,
              TBlock(text: "T3"),
            ],
          ),
          gaph16,
          Container(
            height: 90.h,
            width: AppConst.kWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(cityView),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  "View",
                  style: AppTextStyle.kPrimaryTextStyle.copyWith(
                    color: AppColors.darkWhiteColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
