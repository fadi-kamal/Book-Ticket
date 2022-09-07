import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';
import 'package:flyingapp/view/Screen/book/book_screen.dart';
class CustomFooter extends StatelessWidget {
  const CustomFooter({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.025),
      child: MaterialButton(
        color: AppColors.primaryColor,
        padding: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.02),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        onPressed: () {
        
       Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookScreen(),
                  ));
           
          
        },
        child: Text(
          AppString.checkout,
          style: AppStyle().textTheme.headline1!.copyWith(
              color: AppColors.whiteColor,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
