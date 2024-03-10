import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/text_style.dart';
import '../../../../utils/utils.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: AppConst.kheight * 0.3,
          width: AppConst.kWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/map.png"), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 20,
          right: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.realWhiteColor,
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: Image.network(personImage),
                  ),
                ),
                const MapDetailWidget(title: "Flights", value: "04"),
                const MapDetailWidget(title: "Countries", value: "06"),
                const MapDetailWidget(title: "Distance", value: "4,287Km"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MapDetailWidget extends StatelessWidget {
  const MapDetailWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyle.kSubtitleTextStyle.copyWith(
            color: AppColors.darkGreyColor,
          ),
        ),
        Text(
          value,
          style: AppTextStyle.kSubHeadTexStyle,
        )
      ],
    ));
  }
}
