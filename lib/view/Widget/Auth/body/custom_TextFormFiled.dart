// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class CustomTextFormFiled extends StatefulWidget {
  final String labelName;
 late bool hideText;
  final Widget? icon;
  final TextInputType? keyboardType;
  late bool iconBool;

  CustomTextFormFiled({
    Key? key,
    required this.labelName,
     required this.hideText,
    required this.iconBool,
    this.icon,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenHeight! * 0.012,
          vertical: MediaQuerySize.screenHeight! * 0.020),
      child: TextField(
        obscureText: widget.hideText, 
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  BorderSide(color: AppColors.primaryColor, width: 1.5)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 2.5),
          ),
          suffixIcon: widget.iconBool ? widget.icon :  InkWell(
            onTap: () {
              setState(() {
                widget.hideText = !widget.hideText;
              });
            },
            child: Icon(
              widget.hideText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: widget.hideText ? AppColors.primaryColor : Colors.grey,
            ), 
          ),
          label: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                widget.labelName,
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600),
              )),
        ),
      ),
    );
  }
}
