import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomContainerCard extends StatelessWidget {
  final Color? BackGroundColor;
   CustomContainerCard({
    this.BackGroundColor ,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenWidth! * 0.03,
        ),
        height: MediaQuerySize.screenHeight! * 0.28,
        width: MediaQuerySize.screenWidth! * 0.5,
        decoration: BoxDecoration(
            color: BackGroundColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: AppColors.lightBlack,
                  offset: Offset(-1, 2)),
              BoxShadow(
                  blurRadius: 2,
                  color: AppColors.lightBlack,
                  offset: Offset(1, -2))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuerySize.screenWidth! * 0.06,
                  vertical: MediaQuerySize.screenWidth! * 0.05),
              height: 60,
              width: MediaQuerySize.screenWidth! * 0.15,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.89),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Transform.rotate(
                  angle: MediaQuerySize.screenHeight! * 0.001,
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: AppColors.deepBlue500,
                    size: 35,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerySize.screenWidth! * 0.06,
                  vertical: MediaQuerySize.screenWidth! * 0.02),
              child: Text(
                "17 August 2022",
                style: AppStyle()
                    .textTheme
                    .headline3!
                    .copyWith(color: AppColors.whiteColor.withOpacity(0.8)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuerySize.screenWidth! * 0.06,
                ),
                Text(
                  "SFC",
                  style: AppStyle().textTheme.headline1!.copyWith(
                      fontSize: 30,
                      color: AppColors.whiteColor.withOpacity(0.85)),
                ),
                Icon(
                  Icons.compare_arrows_rounded,
                  color: AppColors.whiteColor,
                  size: 50,
                ),
                Text("NYC",
                    style: AppStyle().textTheme.headline1!.copyWith(
                        fontSize: 30,
                        color: AppColors.whiteColor.withOpacity(0.85)))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerySize.screenWidth! * 0.06),
              child: Text("\u0024 2,453",
                  style: AppStyle().textTheme.headline1!.copyWith(
                      fontSize: 25,
                      color: AppColors.whiteColor.withOpacity(0.85))),
            )
          ],
        ));
  }
}
