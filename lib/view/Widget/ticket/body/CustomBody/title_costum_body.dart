import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class TitleCustomBody extends StatelessWidget {
  final bool isActive;
  const TitleCustomBody({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuerySize.screenWidth! * 0.03,
              vertical: MediaQuerySize.screenWidth! * 0.05),
          height: 50,
          width: MediaQuerySize.screenWidth! * 0.12,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.89),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Transform.rotate(
              angle: MediaQuerySize.screenHeight! * 0.001,
              child: Icon(
                Icons.airplanemode_active_rounded,
                color: AppColors.whiteColor,
                size: 25,
              )),
        ),
        Text(
          "Airways",
          style: AppStyle().textTheme.headline1!.copyWith(
              color: AppColors.blackColor,
              fontSize: 28,
              fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "\$",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                isActive == false ?"234" : "546",
                style: AppStyle()
                    .textTheme
                    .headline2!
                    .copyWith(color: AppColors.blackColor, fontSize: 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
