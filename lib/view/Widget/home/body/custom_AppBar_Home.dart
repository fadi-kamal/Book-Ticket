import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuerySize.screenHeight! * 0.05);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.amber,
      leading: Padding(
        padding: EdgeInsets.only(
            left: MediaQuerySize.screenHeight! * 0.02,
            top: MediaQuerySize.screenHeight! * 0.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuerySize.screenHeight! * 0.003),
            height: 3,
            width: 15,
            color: AppColors.blackColor,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuerySize.screenHeight! * 0.003),
            height: 3,
            color: AppColors.blackColor,
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuerySize.screenHeight! * 0.003,
                left: MediaQuerySize.screenHeight! * 0.02),
            height: 3,
            width: 25,
            color: AppColors.blackColor,
          ),
        ]),
      ),
    );
  }
}
