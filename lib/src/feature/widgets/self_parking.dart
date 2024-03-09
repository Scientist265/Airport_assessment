import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class SelfParking extends StatelessWidget {
  const SelfParking({super.key});

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
            "Self Parking",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph12,
          const Row(
            children: [
              T1andT2(
                text: 'T1',
                isSelected: true,
              ),
              gapW16,
              T1andT2(text: "T2"),
            ],
          ),
          gapW16,
          AutombileChoiceWidget(
            iconPath: AppAssets.twoWheeler,
            autombileName: "Two wheeler",
            price: "50",
          ),
          AutombileChoiceWidget(
            iconPath: AppAssets.car,
            autombileName: "Car Parking",
            price: "100",
          ),
          AutombileChoiceWidget(
            iconPath: AppAssets.electricCar,
            autombileName: "Electric Car Parking",
            price: "100",
          ),
        ],
      ),
    );
  }
}

class T1andT2 extends StatelessWidget {
  const T1andT2({
    super.key,
    this.isSelected,
    required this.text,
  });

  final bool? isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected == true
            ? AppColors.blackColor
            : AppColors.darkWhiteColor,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Text(
        text,
        style: AppTextStyle.kButtonTextStyle.copyWith(
          color:
              isSelected == true ? AppColors.whiteColor : AppColors.blackColor,
        ),
      ),
    );
  }
}

class AutombileChoiceWidget extends StatelessWidget {
  const AutombileChoiceWidget(
      {super.key,
      required this.iconPath,
      required this.autombileName,
      required this.price});
  final String iconPath, autombileName, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            svgIcon(iconPath: iconPath, height: 22),
            gapW16,
            Text(autombileName,
                style: AppTextStyle.kSubHeadTexStyle.copyWith(
                  color: AppColors.darkGreyColor,
                ))
          ],
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  " AED $price / day",
                  style: AppTextStyle.kPrimaryTextStyle
                      .copyWith(color: AppColors.darkGreyColor),
                ),
                const Icon(
                  Icons.warning,
                  color: AppColors.darkGreyColor,
                )
              ],
            ))
      ],
    );
  }
}
