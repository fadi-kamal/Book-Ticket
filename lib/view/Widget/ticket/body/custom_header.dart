import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';
import 'package:flyingapp/view/Widget/ticket/body/CustomHeader/text_icon_ticket.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuerySize.screenWidth! * 0.05, vertical: MediaQuerySize.screenHeight! * 0.03),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Trip",
            style: AppStyle().textTheme.headline2,
          ),
          Row(
            children: [
              Text(
                AppString.sfoNyc,
                style: AppStyle()
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 20, color: AppColors.blackColor),
              ),
              SizedBox(width: 10,),
              TextIconTicket(
                  backgroundColor: AppColors.lightBlue100,
                  text: AppString.oneWay,
                  textColor: AppColors.deepBlue500,
                  icon: Icons.arrow_forward,
                  iconColor: AppColors.whiteColor,
                  backGroundicon: AppColors.deepBlue500)
            ],
          ),
          Text(
            "5 July 2022",
            style: AppStyle().textTheme.headline2,
          ),
        ],
      ),
    );
  }
}