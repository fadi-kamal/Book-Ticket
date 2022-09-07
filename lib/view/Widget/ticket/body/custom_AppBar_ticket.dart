import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomAppBarTicket extends StatelessWidget
    implements PreferredSizeWidget {
  CustomAppBarTicket({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuerySize.screenHeight! * 0.07);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppString.selTicket,
        style: AppStyle()
            .textTheme
            .headline2!
            .copyWith(color: AppColors.blackColor, fontSize: 25),
      ),
      leading:IconButton( onPressed: () {
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColor)),
      actions: [
        Container(
          margin: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.02),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: MediaQuerySize.screenWidth! * 0.05,
                  bottom: MediaQuerySize.screenHeight! * 0.008,
                ),
                height: 3,
                width: 20,
                color: AppColors.blackColor,
              ),
              Container(
                height: 3,
                width: 40,
                color: AppColors.blackColor,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuerySize.screenHeight! * 0.008,
                    left: MediaQuerySize.screenWidth! * 0.06),
                height: 3,
                width: 20,
                color: AppColors.blackColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
