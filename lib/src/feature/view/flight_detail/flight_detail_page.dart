import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/pop_button.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/ticket_widget.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/map_widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //TODO change with actual Google Map
          // Container(
          //   height: AppConst.kheight * 0.3,
          //   width: AppConst.kWidth,
          //   decoration:
          //       BoxDecoration(borderRadius: BorderRadius.circular(18)),
          //   child: const GoogleMap(
          //     initialCameraPosition:
          //         CameraPosition(target: LatLng(20, 25), zoom: 15),
          //   ),
          // ),

          const MapWidget(),
          gaph20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
            child: const Column(
              children: [
                HeaderWidget(),
                gaph20,
                TicketWidget(),
              ],
            ),
          )
        ],
      )),
    );
  }
}

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
