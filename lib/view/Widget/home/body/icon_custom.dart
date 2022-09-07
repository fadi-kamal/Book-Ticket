import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/theme.dart';

class IconCustom extends StatelessWidget {
  final String labeText;
  final IconData iconData;
  final Color backGroundColor;
  const IconCustom({
    required this.labeText,
    required this.iconData,
    required this.backGroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 19 , vertical: 25),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: backGroundColor,
               borderRadius: BorderRadius.circular(15),
               boxShadow:[
                BoxShadow(
                  blurRadius: 2 ,
                  color: Colors.black38,
                  offset: Offset(0.5, 0)
                ),
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black12,
                  offset: Offset(0, -0.5)
                ),
               ]
               ),
          child: Icon(
            iconData,
            color: AppColors.whiteColor,
          ),
        ),
        Text(
          labeText,
          style: AppStyle().textTheme.headline3!.copyWith(
              fontSize: 20,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
