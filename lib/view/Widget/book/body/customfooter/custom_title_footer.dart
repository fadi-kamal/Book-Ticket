import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/theme.dart';

class CustomTitleFooter extends StatelessWidget {
  const CustomTitleFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppString.reco,
            style: AppStyle()
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, color: AppColors.blackColor),
          ),
          Text(
            AppString.view,
            style: AppStyle().textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
