import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/view/Widget/book/body/customheader/text_and_icon.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: [
          TextAndIcon(
            backgroundColor: AppColors.lightBlue100,
            backGroundicon: AppColors.deepBlue800,
            text: AppString.oneWay,
            textColor: AppColors.deepBlue500,
            icon: Icons.arrow_forward,
            iconColor: AppColors.whiteColor,
          ),
          TextAndIcon(
            backgroundColor: AppColors.lightGrey100,
            backGroundicon: AppColors.lightGrey300.withOpacity(0.4),
            text: AppString.roundTrip,
            textColor: AppColors.deepGrey600,
            icon: Icons.compare_arrows_rounded,
            iconColor: AppColors.deepGrey600,
          ),
        ],
      ),
    );
  }
}