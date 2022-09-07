import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class TextIconTicket extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final IconData icon;
  final Color iconColor;
  final Color backGroundicon;

  TextIconTicket({
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.icon,
    required this.iconColor,
    required this.backGroundicon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuerySize.screenHeight! * 0.04,
      width: MediaQuerySize.screenWidth! * 0.3,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenWidth! * 0.02,
          vertical: MediaQuerySize.screenHeight! * 0.006),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
              blurRadius: 1,
              // spreadRadius: 2,
              color: AppColors.lightBlack,
              offset: Offset(0, 1)),
          BoxShadow(
              blurRadius: 1,
              // spreadRadius: 0.5,
              color: AppColors.lightWhite,
              offset: Offset(0, -1)),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.005),
              decoration: BoxDecoration(
                  color: backGroundicon,
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                icon,
                color: iconColor,
                size: 15,
              )),
          SizedBox(
            width: MediaQuerySize.screenWidth! * 0.02,
          ),
          Text(
            text,
            style: AppStyle()
                .textTheme
                .headline2!
                .copyWith(color: textColor, fontWeight: FontWeight.w400 , fontSize: 15),
          )
        ],
      ),
    );
  }
}
