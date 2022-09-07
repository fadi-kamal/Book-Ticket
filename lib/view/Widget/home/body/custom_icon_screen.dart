import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/view/Screen/ticket/ticket_screen.dart';
import 'package:flyingapp/view/Widget/home/body/icon_custom.dart';

class CustomIconScreen extends StatelessWidget {
  const CustomIconScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>TicketScree(),)
            );
          },
          child: IconCustom(
            iconData: Icons.airplanemode_active_outlined,
            labeText: AppString.flight,
            backGroundColor: AppColors.primaryColor,
          ),
        ),
        IconCustom(
          iconData: Icons.apartment_rounded,
          labeText: AppString.hotels,
          backGroundColor: AppColors.buildingColor,
        ),
        IconCustom(
          iconData: Icons.local_taxi,
          labeText: AppString.taxi,
          backGroundColor: AppColors.taxiColor,
        ),
        IconCustom(
          iconData: Icons.more_vert_sharp,
          labeText: AppString.more,
          backGroundColor: AppColors.boxColor,
        ),
      ],
    );
  }
}
