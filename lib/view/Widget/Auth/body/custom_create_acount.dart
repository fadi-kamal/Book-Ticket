import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomeCreatenAccount extends StatefulWidget {
  late final bool isActive;
  CustomeCreatenAccount({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomeCreatenAccount> createState() => _CustomeCreatenAccountState();
}

class _CustomeCreatenAccountState extends State<CustomeCreatenAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.isActive == false
                ? AppString.dontAccount
                : AppString.CreateAccount,
            style: AppStyle().textTheme.headline2,
          ),
          SizedBox(
            width: MediaQuerySize.screenWidth! * 0.02,
          ),
        Text(
              widget.isActive == false ? AppString.signUp : AppString.signIn,
              style: AppStyle().textTheme.headline2!.copyWith(
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline),
            ),
      
        ],
      ),
    );
  }
}
