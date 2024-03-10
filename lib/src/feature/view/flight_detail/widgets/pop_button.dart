import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popover/popover.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/widgets/menu_items.dart';
import 'package:utlpal_ravi_assesment/src/utils/assets.dart';
import 'package:utlpal_ravi_assesment/src/utils/constants/colors.dart';
import 'package:utlpal_ravi_assesment/src/widgets/widgets.dart';

class PopButton extends StatelessWidget {
  const PopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        backgroundColor: AppColors.whiteColor,
        radius: 10,
        context: context,
        bodyBuilder: (context) => const MenuItems(),
        width: 230,
      ),
      child: svgIcon(iconPath: AppAssets.downArrow, height: 14, width: 14),
    );
  }
}
