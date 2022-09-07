// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomeAppBarLogin extends StatelessWidget implements PreferredSizeWidget {

  void Function(int)? onTap;
  CustomeAppBarLogin({
    required this.onTap,
    Key? key,
  }) : super(key: key);


  
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuerySize.screenHeight! * 0.08);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Container(
          width: MediaQuerySize.screenWidth! * 0.8,
          decoration: BoxDecoration(
              color: Colors.black54.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              indicator: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              labelStyle: AppStyle().textTheme.headline2,
              unselectedLabelColor: Colors.black,
              onTap: onTap,
              tabs: [
                Tab(text: AppString.signIn),
                Tab(
                  text: AppString.signUp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Text(isActive == false ? AppString.signIn : AppString.signUp,
//             style: Theme.of(context).textTheme.headline1),