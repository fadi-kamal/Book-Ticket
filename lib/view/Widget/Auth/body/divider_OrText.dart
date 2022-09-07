import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class DividerAndOR extends StatelessWidget {
  const DividerAndOR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        width:MediaQuerySize.screenWidth! * 0.4,
        height: 2.5,
         decoration: BoxDecoration(
        color: AppColors.primaryColor ,
        borderRadius: BorderRadius.circular(50)
        ),
        
      ),
      
      SizedBox(width: MediaQuerySize.screenWidth! * 0.02,),
        Text("OR" , style: AppStyle().textTheme.headline2!.copyWith( color: Colors.black, fontSize: 25),),
      SizedBox(width: MediaQuerySize.screenWidth! * 0.02,),
      Container(
        width:MediaQuerySize.screenWidth! * 0.4 ,
        height: 2.5,
        decoration: BoxDecoration(
        color: AppColors.primaryColor ,
        borderRadius: BorderRadius.circular(50)
        ),
      ),
        
      ],
    );
  }
}
