import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/view/Widget/ticket/body/CustomBody/flying_details_body.dart';
import 'package:flyingapp/view/Widget/ticket/body/CustomBody/separator_line_body.dart';
import 'package:flyingapp/view/Widget/ticket/body/CustomBody/title_costum_body.dart';

class CardDetails extends StatelessWidget {
  final bool isActive;
  const CardDetails({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(25),
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
      child: Stack(clipBehavior: Clip.none, children: [
        TitleCustomBody(
          isActive: isActive,
        ),
        SeparatorLineBody(),
        FlyingDetailsBody(
          isActive: isActive,
        )
      ]),
    );
  }
}
