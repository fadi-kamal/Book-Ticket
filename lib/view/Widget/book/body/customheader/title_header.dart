
import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenWidth! * 0.05,
          vertical: MediaQuerySize.screenHeight! * 0.03),
      child: Text(
        AppString.bookFlight,
        style: AppStyle()
            .textTheme
            .headline1!
            .copyWith(color: AppColors.blackColor),
      ),
    );
  }
}
