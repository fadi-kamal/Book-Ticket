import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/core/utils/theme.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuerySize.screenWidth! * 0.04),
      child: Text(
          AppString.forgetPassword,
          textAlign: TextAlign.end,
          style: AppStyle().textTheme.headline2,
        ),
    );
  }
}
