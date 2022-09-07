import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomCart extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  final double? leftMA;
  final double? rightMA;
  const CustomCart({
    required this.icon,
    required this.title,
    required this.text,
    this.leftMA =  0.01,
    this.rightMA = 0.12,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuerySize.screenHeight! * leftMA!,
          right: MediaQuerySize.screenHeight! * rightMA!,
          top: MediaQuerySize.screenHeight! * 0.02),
      height: MediaQuerySize.screenHeight! * 0.1,
      width: MediaQuerySize.screenWidth! * 0.8,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: AppColors.lightGrey300,
            size: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: AppStyle().textTheme.headline2,
              ),
              SizedBox(
                height: MediaQuerySize.screenHeight! * 0.005,
              ),
              Row(
                children: [
                  Text(
                    text,
                    style: AppStyle().textTheme.headline1!.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
