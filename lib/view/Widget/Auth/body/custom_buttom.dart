import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class customButton extends StatefulWidget {
  final bool isActive;
  final void Function()? onPressed;
  customButton({
    required this.isActive,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  State<customButton> createState() => _customButtonState();
}

class _customButtonState extends State<customButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenHeight! * 0.012,
          vertical: MediaQuerySize.screenHeight! * 0.020),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(MediaQuerySize.screenHeight! * 0.025),
        color: AppColors.primaryColor,
        onPressed: () => widget.onPressed!(),
        child: Text(
          widget.isActive == false ? AppString.signIn : AppString.signUp,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
