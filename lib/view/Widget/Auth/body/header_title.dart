import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class HeaderTitle extends StatefulWidget {
  final bool isActive;
  HeaderTitle({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderTitle> createState() => _HeaderTitleState();
}


class _HeaderTitleState extends State<HeaderTitle> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuerySize.screenHeight! * 0.035),
      child: Column(
        children: [
          Text(
            AppString.appHeaderName,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.black,
                ),
          ),
          SizedBox(
            height: MediaQuerySize.screenHeight! * 0.02,
          ),
          Text(
            widget.isActive == false ? AppString.appBodyLogiN : AppString.appBodySigUp,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2
          ),
        ],
      ),
    );
  }
}
