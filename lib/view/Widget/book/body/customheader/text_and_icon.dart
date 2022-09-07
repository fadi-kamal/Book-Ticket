import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class TextAndIcon extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final IconData icon;
  final Color iconColor;
  final Color backGroundicon;

  TextAndIcon({
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
      height: MediaQuerySize.screenHeight! * 0.06,
      width: MediaQuerySize.screenWidth! * 0.45,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenWidth! * 0.02,
          vertical: MediaQuerySize.screenHeight! * 0.006),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 2,
                color: AppColors.lightBlack,
                offset: Offset(0, 2)),
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0.5,
                color: AppColors.lightWhite,
                offset: Offset(0, -2)),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.01),
              decoration: BoxDecoration(
                  color: backGroundicon,
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                icon,
                color: iconColor,
              )),
          SizedBox(
            width: MediaQuerySize.screenWidth! * 0.02,
          ),
          Text(
            text,
            style: AppStyle().textTheme.headline2!.copyWith(
                color: textColor, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
