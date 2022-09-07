import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';

ThemeData AppStyle() {
  return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 40),
        headline2: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
             color: Colors.grey,
              height: 1.3, 
              wordSpacing: 1.2),
          button: TextStyle(
            color: Colors.white , fontSize: 30 
          )
      )
      
      
      );
}
