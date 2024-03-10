import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/constants.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';

class ForeignExchange extends StatelessWidget {
  const ForeignExchange({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: cardDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Foreign Exchange",
            style: AppTextStyle.kHeaderTextStyle,
          ),
          gaph16,
          SizedBox(
            height: size.height * 0.2,
            child: ListView.builder(
                itemCount: AppConstant.exchanges.length,
                itemBuilder: ((context, index) {
                  final exhange = AppConstant.exchanges[index];
                  return Card(
                    clipBehavior: Clip.none,
                    elevation: 0,
                    color: AppColors.whiteColor,
                    child: ExpansionTile(
                      iconColor: AppColors.blackColor,
                      collapsedIconColor: AppColors.blackColor,
                      collapsedShape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      childrenPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      title: Text(
                        exhange.exchangeName,
                        style: AppTextStyle.kSubHeadTexStyle,
                      ),
                      children: [
                        Text(
                          exhange.locationAddress,
                          style: AppTextStyle.kPrimaryTextStyle
                              .copyWith(color: AppColors.darkGreyColor),
                        ),
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
