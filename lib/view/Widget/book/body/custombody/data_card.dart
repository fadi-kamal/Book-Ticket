import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';
import 'package:flyingapp/view/Screen/ticket/ticket_screen.dart';
import 'package:flyingapp/view/Widget/book/body/customfooter/custom_cart.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCart(
          icon: Icons.calendar_month,
          title: AppString.passengers,
          text: AppString.adults,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              CustomCart(
                icon: Icons.person,
                title: AppString.departures,
                text: "5 July 2022",
                rightMA: 0.02,
              ),
              CustomCart(
                icon: Icons.chair,
                title: AppString.classs,
                text: AppString.business,
                leftMA: 0.002,
                rightMA: 0.02,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuerySize.screenHeight! * 0.07,
              width: MediaQuerySize.screenWidth! * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.89),
                  borderRadius: BorderRadius.circular(15),
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
              child: Icon(
                Icons.percent_outlined,
                color: AppColors.deepGrey600,
                size: 40,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TicketScree(),
                    ));
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: MediaQuerySize.screenHeight! * 0.07,
                  width: MediaQuerySize.screenWidth! * 0.6,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: AppColors.lightBlack,
                            offset: Offset(-3, 3)),
                        BoxShadow(
                            blurRadius: 10,
                            color: AppColors.lightBlack,
                            offset: Offset(3, -3))
                      ]),
                  child: Text(
                    AppString.search,
                    textAlign: TextAlign.center,
                    style: AppStyle().textTheme.headline1!.copyWith(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5),
                  )),
            ),
          ],
        )
      ],
    );
  }
}
