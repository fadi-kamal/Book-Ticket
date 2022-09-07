import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class FlyingDetailsBody extends StatelessWidget {
  final bool isActive;
  FlyingDetailsBody({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuerySize.screenHeight! * 0.175,
      child: Container(
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(
                  left: MediaQuerySize.screenWidth! * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Depature", style: AppStyle().textTheme.headline2),
                    SizedBox(
                      height: 25,
                    ),
                    Text( isActive == false ?"13:45": "08:35",
                        style: AppStyle()
                            .textTheme
                            .headline2!
                            .copyWith(color: AppColors.blackColor)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("SFO", style: AppStyle().textTheme.headline2),
                    SizedBox(
                      height: 15,
                    ),
                    Text(isActive == false ? "09:00" : "18:40",
                        style: AppStyle()
                            .textTheme
                            .headline2!
                            .copyWith(color: AppColors.blackColor)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("NFC", style: AppStyle().textTheme.headline2),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(
                  right: MediaQuerySize.screenWidth! * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text("5h 30m", style: AppStyle().textTheme.headline2),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                            angle: MediaQuerySize.screenHeight! * 0.00185,
                            child: Icon(
                              Icons.airplanemode_active_rounded,
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              size: 25,
                            )),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Icon(
                          Icons.location_on,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(isActive == false ?"06h 10m": "5h 58m", style: AppStyle().textTheme.headline2),
                    Row(
                      children: [
                        Transform.rotate(
                            angle: MediaQuerySize.screenHeight! * 0.00185,
                            child: Icon(
                              Icons.airplanemode_active_rounded,
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              size: 25,
                            )),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: AppColors.deepGrey600.withOpacity(0.7),
                              shape: BoxShape.circle),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                        Icon(
                          Icons.location_on,
                          color: AppColors.deepGrey600.withOpacity(0.7),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Arrive", style: AppStyle().textTheme.headline2),
                SizedBox(
                  height: 25,
                ),
                Text(isActive == false ? "22:15" : "16:40",
                    style: AppStyle()
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.blackColor)),
                SizedBox(
                  height: 10,
                ),
                Text("NYC", style: AppStyle().textTheme.headline2),
                SizedBox(
                  height: 15,
                ),
                Text(isActive== false ? "12:10": "21:38",
                    style: AppStyle()
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.blackColor)),
                SizedBox(
                  height: 10,
                ),
                Text("SFO", style: AppStyle().textTheme.headline2),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
