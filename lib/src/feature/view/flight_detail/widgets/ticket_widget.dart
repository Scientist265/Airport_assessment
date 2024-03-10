import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/dotted_line_widget.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: cardDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mon, 20 Dec 24",
                style: AppTextStyle.kHeaderTextStyle.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.darkBlueColor,
                    child: svgIcon(
                      iconPath: AppAssets.flight,
                    ),
                  ),
                  gapW12,
                  Text(
                    "6E725",
                    style: AppTextStyle.kSubtitleTextStyle
                        .copyWith(color: AppColors.darkGreyColor),
                  ),
                ],
              ),
            ],
          ),
          gaph20,
          const MySeparator(),
          gaph20,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: "DEL ",
                    style: AppTextStyle.kHeaderTextStyle,
                    children: [
                      TextSpan(
                          text: "08:15",
                          style: AppTextStyle.kHeaderTextStyle
                              .copyWith(color: AppColors.greenColor))
                    ]),
              ),
              Text(
                "2h 5m",
                style: AppTextStyle.kSubtitleTextStyle
                    .copyWith(color: AppColors.darkGreyColor),
              ),
              RichText(
                text: TextSpan(
                    text: "10:15",
                    style: AppTextStyle.kHeaderTextStyle,
                    children: [
                      TextSpan(
                          text: " BOM",
                          style: AppTextStyle.kHeaderTextStyle
                              .copyWith(fontWeight: FontWeight.w600))
                    ]),
              ),
            ],
          ),
          gaph4,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(text: "🇮🇳", children: [
                  TextSpan(
                      text: " New Delhi",
                      style: AppTextStyle.kSubtitleTextStyle
                          .copyWith(color: AppColors.darkGreyColor))
                ]),
              ),
              RichText(
                text: TextSpan(
                    text: "Mumbai ",
                    style: AppTextStyle.kSubtitleTextStyle
                        .copyWith(color: AppColors.darkGreyColor),
                    children: const [
                      TextSpan(
                        text: "🇮🇶",
                      )
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
