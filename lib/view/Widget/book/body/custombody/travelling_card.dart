import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/book/body/custombody/custom_card.dart';

class TravellingCard extends StatelessWidget {
  const TravellingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              CustomCard(
                textTitle: AppString.from,
                textDis: AppString.sFrancisco,
                oneIcon: Icons.airplanemode_active_outlined,
                twoIcon: Icons.more_vert_rounded,
                threeIcon: Icons.arrow_downward_sharp,
              ),
              CustomCard(
                textTitle: AppString.distance,
                textDis: AppString.newyork,
                oneIcon: Icons.arrow_upward_sharp,
                twoIcon: Icons.more_vert_rounded,
                threeIcon: Icons.location_on_outlined,
              ),
            ],
          ),
          Positioned(
            right: MediaQuerySize.screenWidth! * 0.12,
            top: MediaQuerySize.screenHeight! * 0.11,
            child: Container(
                height: MediaQuerySize.screenHeight! * 0.085,
                width: MediaQuerySize.screenWidth! * 0.18,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: AppColors.lightBlack,
                          offset: Offset(0, 2)),
                      BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 0.5,
                          color: AppColors.lightWhite,
                          offset: Offset(0, -2)),
                    ]),
                child: Transform.rotate(
                    angle: MediaQuerySize.screenHeight! * 0.00565,
                    child: Icon(
                      Icons.compare_arrows_rounded,
                      color: AppColors.whiteColor,
                      size: MediaQuerySize.screenHeight! * 0.065,
                    ))),
          ),
        ],
      ),
    );
  }
}
