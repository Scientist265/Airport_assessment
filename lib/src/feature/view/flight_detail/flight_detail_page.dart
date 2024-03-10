import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/board_pass_and_share_trip.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/header_widget.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/onboard_widget.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/ticket_widget.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';

import 'widgets/map_widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          // TODO Not working on Emulator 
          // const TheMap(),

          const MapWidget(),
          gaph20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
            child: const Column(
              children: [
                HeaderWidget(),
                gaph20,
                TicketWidget(
                  date: 'Mon,20 DEc 24',
                  from: 'DEL',
                  to: 'BOM',
                ),
                gaph20,
                OnboardTimerWidget(),
                gaph20,
                BoardPassAndShareTripWidget(),
                gaph20,
                Divider(thickness: 0.8, color: AppColors.darkGreyColor),
                gaph20,
                TicketWidget(
                  date: 'Mon 24 Dec 24',
                  from: 'BOM',
                  to: 'DEL',
                ),
                gaph20,
              ],
            ),
          )
        ],
      )),
    );
  }
}

class TheMap extends StatefulWidget {
  const TheMap({
    super.key,
  });

  @override
  State<TheMap> createState() => _TheMapState();
}

class _TheMapState extends State<TheMap> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500, -122.0327);
  static const LatLng destinaation = LatLng(37.33, -122.066);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kheight * 0.3,
      width: AppConst.kWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: const GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(20, 25), zoom: 14.5),
      ),
    );
  }
}
