import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/forecast_data_widget.dart';
import 'package:utlpal_ravi_assesment/src/feature/widgets/header_title.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/app_strings.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/constants.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/sizing.dart';
import 'package:utlpal_ravi_assesment/src/utils/text_style.dart';
import 'package:utlpal_ravi_assesment/src/utils/utils.dart';
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
                gaph16,
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
                gaph8,
                //Taxi Service 
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class FlightDetailCard extends StatelessWidget {
  const FlightDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      width: AppConst.kWidth,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(cityView), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              color: AppColors.whiteColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ForecastDataWidget(
                      data: "19 C",
                      desc: "Cloudy",
                      iconPath: AppAssets.cloud,
                    ),
                    ForecastDataWidget(
                      data: "30 Jan",
                      desc: "Mon",
                      iconPath: AppAssets.calendar,
                    ),
                    ForecastDataWidget(
                      data: "8:45 PM",
                      desc: "GMT",
                      iconPath: AppAssets.time,
                    ),
                    ForecastDataWidget(
                      data: "AED",
                      desc: "1\$ -3.67AED",
                      iconPath: AppAssets.currency,
                    )
                  ],
                ),
                gaph8,
                const Divider(
                  thickness: 0.5,
                  color: AppColors.darkWhiteColor,
                ),
                const ForecastDataButtons(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
