import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_TextFormFiled.dart';

class AnimatedText extends StatefulWidget {
  final bool isActive;
  const AnimatedText({super.key, required this.isActive});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: 400.0, end: 0),
          duration: Duration(milliseconds:900),
          curve: Curves.easeInOutBack,
          builder: (context, value, child) => Transform.translate(
            
            offset: Offset(
                widget.isActive == true ? double.parse(value.toString()) : 0,
                widget.isActive == true ? 0 : 0),
            child: CustomTextFormFiled(
              labelName: "rePassword",
              hideText: true,
              iconBool: false,
            ),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 400.0, end: 0.0),
          duration: Duration(milliseconds: 1100),
          curve: Curves.easeInOutBack,
          builder: (context, value, child) => Transform.translate(
            offset: Offset(
                widget.isActive == true ? double.parse(value.toString()) : 0,
                widget.isActive == true ? 0 : 0),
            child: CustomTextFormFiled(
              labelName: "UserName",
              hideText: false,
              iconBool: true,
              icon: Icon(
                Icons.person,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 400.0, end: 0),
          duration: Duration(milliseconds: 1300),
          curve: Curves.easeInOutBack,
          builder: (context, value, child) => Transform.translate(
            offset: Offset(
                widget.isActive == true ? double.parse(value.toString()) : 0,
                widget.isActive == true ? 0 : 0),
            child: CustomTextFormFiled(
              labelName: "Phone",
              hideText: false,
              iconBool: true,
              keyboardType: TextInputType.phone,
              icon: Icon(
                Icons.phone,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
