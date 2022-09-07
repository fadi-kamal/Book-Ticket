import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class SeparatorLineBody extends StatelessWidget {
SeparatorLineBody({
    Key? key,
  }) : super(key: key);


  List remove = [
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
    Icon(
      Icons.remove,
      color: AppColors.deepGrey600,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Stack(
       clipBehavior: Clip.none,
       children: [
          Positioned(
       top: MediaQuerySize.screenHeight! * 0.1,
       left: -15,
       child: Container(
         height: 30,
         width: 30,
         decoration: BoxDecoration(
             // color: Colors.white.withOpacity(0.8),
             gradient: LinearGradient(
               colors: [
                 Colors.white.withOpacity(1),
                 Colors.white.withOpacity(0.95),
                 Colors.white.withOpacity(0.90),
                 Colors.white.withOpacity(0.85),
                 Colors.white.withOpacity(0.80),
                 Colors.white.withOpacity(0.75),
                 Colors.white.withOpacity(0.70),
                 Colors.white.withOpacity(0.65),
                 Colors.white.withOpacity(0.60),
                 Colors.white.withOpacity(0.55),
                 Colors.white.withOpacity(0.5),
               ],
             ),
             borderRadius: BorderRadius.circular(50),
             border: Border.all(
                 color: Colors.black.withOpacity(0.2), width: 0.01),
             boxShadow: [
               BoxShadow(
                   blurRadius: 10,
                   spreadRadius: 2,
                   color: AppColors.whiteColor,
                   offset: Offset(-5, 2)),
               BoxShadow(
                   blurRadius: 0.2,
                   // spreadRadius: ,
                   color: AppColors.lightBlack,
                   offset: Offset(1, 0)),
             ]),
       ),
     ),
  Container(
         margin: EdgeInsets.only(left: 30 , bottom: 150),
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: remove.length,
           itemBuilder: (context, index) {
             return Container(
               child: remove[index],
             );
           },
         ),
       ),
   
     Positioned(
       top: MediaQuerySize.screenHeight! * 0.1,
       right: -15,
       child: Container(
         height: 30,
         width: 30,
         decoration: BoxDecoration(
             // color: Colors.white.withOpacity(0.8),
             gradient: LinearGradient(
               colors: [
                 Colors.white.withOpacity(0.5),
                 Colors.white.withOpacity(0.55),
                 Colors.white.withOpacity(0.60),
                 Colors.white.withOpacity(0.65),
                 Colors.white.withOpacity(0.70),
                 Colors.white.withOpacity(0.75),
                 Colors.white.withOpacity(0.80),
                 Colors.white.withOpacity(0.85),
                 Colors.white.withOpacity(0.90),
                 Colors.white.withOpacity(0.95),
                 Colors.white.withOpacity(1),
               ],
             ),
             borderRadius: BorderRadius.circular(50),
             border: Border.all(
                 color: Colors.black.withOpacity(0.2), width: 0.01),
             boxShadow: [
               BoxShadow(
                   blurRadius: 10,
                   spreadRadius: 2,
                   color: AppColors.whiteColor,
                   offset: Offset(5, 0)),
               BoxShadow(
                   blurRadius: 0.2,
                   // spreadRadius: ,
                   color: AppColors.lightBlack,
                   offset: Offset(-1, 0)),
             ]),
       ),
     ),
       ],
     ),
    );
  }
}
