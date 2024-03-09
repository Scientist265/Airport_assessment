import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/contact_airport.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/forecast_data_widget.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/foreign_exchange.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/header_title.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/public_transport.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/self_parking.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/taxi_service.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/terminal_map.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/constants.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
import 'package:utlpal_ravi_assesment/src/widgets/card_decoration.dart';
import 'package:utlpal_ravi_assesment/src/widgets/custom_button.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderTitle(),
                gaph8,
                const FlightDetailCard(),
                gaph20,
                TabBar(
                  indicatorPadding: EdgeInsets.zero,
                  isScrollable: true,
                  indicator: const BoxDecoration(),
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  tabs: AppConstant.getHomeScreenTabs(_tabController.index),
                  controller: _tabController,
                  onTap: (index) {
                    setState(() {});
                  },
                ),
                gaph20,

                //Taxi Service
                const TaxiService(),
                gaph20,
                const PublicTransport(),
                gaph20,
                const SelfParking(),
                gaph20,
                const TerminalMap(),
                gaph20,
                const ForeignExchange(),
                gaph20,
                const ContactAirport(),
                gaph20,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonText: "Get direction",
                      press: () {},
                      iconPath: AppAssets.direction,
                    ),
                    CustomButton(
                      buttonText: "Call airport",
                      press: () {},
                      iconPath: AppAssets.callWhite,
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
