import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomCard extends StatelessWidget {
  final String textTitle;
  final String textDis;
  final IconData oneIcon;
  final IconData twoIcon;
  final IconData threeIcon;

  CustomCard({
    required this.textTitle,
    required this.textDis,
    required this.oneIcon,
    required this.twoIcon,
    required this.threeIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.01),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.89),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: AppColors.lightBlack,
                offset: Offset(-3, 3)),
            BoxShadow(
                blurRadius: 5,
                color: AppColors.lightBlack,
                offset: Offset(3, -3))
          ]),
       
        child: Row(
          children: [
            SizedBox(
              width: MediaQuerySize.screenHeight! * 0.04,
            ),
            Column(
              children: [
                SizedBox(height: MediaQuerySize.screenHeight! * 0.02),
                Transform.rotate(
                    angle: MediaQuerySize.screenHeight! * 0.00375,
                    child: Icon(
                      oneIcon,
                      color: AppColors.deepGrey600,
                    )),
                Icon(
                  twoIcon,
                  color: AppColors.deepGrey600,
                ),
                Icon(
                  threeIcon,
                  color: AppColors.deepGrey600,
                ),
                SizedBox(height: MediaQuerySize.screenHeight! * 0.02),
         
              ],
            ),
            SizedBox(
              width: MediaQuerySize.screenHeight! * 0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuerySize.screenHeight! * 0.02),
                Text(textTitle,
                    style:
                        AppStyle().textTheme.headline2!.copyWith(fontSize: 25)),
                SizedBox(
                  height: MediaQuerySize.screenHeight! * 0.01,
                ),
                Text(textDis,
                    style: AppStyle().textTheme.headline1!.copyWith(
                        color: AppColors.blackColor.withOpacity(0.94),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: MediaQuerySize.screenHeight! * 0.02),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
