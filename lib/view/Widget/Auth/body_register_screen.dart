import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/view/Screen/home/home_screen.dart';
import 'package:flyingapp/view/Widget/Auth/body/animated_text.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_TextFormFiled.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_buttom.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_create_acount.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_image.dart';
import 'package:flyingapp/view/Widget/Auth/body/divider_OrText.dart';
import 'package:flyingapp/view/Widget/Auth/body/forget_password.dart';
import 'package:flyingapp/view/Widget/Auth/body/header_title.dart';

class BodyLogIn extends StatelessWidget {
  final bool isActive;
  const BodyLogIn({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          HeaderTitle(isActive: isActive),
          CustomImage(
            isActive: isActive,
          ),
          CustomTextFormFiled(
              labelName: "Email",
              hideText: false,
              icon: Icon(
                Icons.person,
                color: AppColors.primaryColor,
              ),
              iconBool: true),
          CustomTextFormFiled(
            labelName: "Password",
            hideText: true,
            iconBool: false,
          ),
          isActive == false
              ? ForgetPassword()
              : AnimatedText(
                  isActive: isActive,
                ),
          customButton(
            isActive: isActive,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomeScreen(); 
                },
              ));
            },
          ),
          DividerAndOR(),
          CustomeCreatenAccount(
            isActive: isActive,
          )
        ],
      ),
    );
  }
}
