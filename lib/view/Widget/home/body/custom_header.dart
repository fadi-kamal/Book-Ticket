import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomeHeader extends StatelessWidget {
  const CustomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.userName,
                    style: AppStyle()
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    AppString.findDeals,
                    style: AppStyle()
                        .textTheme
                        .headline1!
                        .copyWith(color: AppColors.blackColor),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.backGroundColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 35),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 35,),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 10),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
            // padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          color: AppColors.primaryColor, width: 2)),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.grey,
                    size: 35,
                  ), 
                  hintText: AppString.searchLabe
                  ),
            )),
      ],
    );
  }
}
