import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/assets_image.dart';
import 'package:flyingapp/core/utils/media_query.dart';

class CustomImage extends StatelessWidget {
  final bool isActive;
  CustomImage({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuerySize.screenHeight! * 0.035),
      height: MediaQuerySize.screenHeight! * 0.25,
      child: isActive == false? Image.asset(assetsImages[0]) : Image.asset(assetsImages[1]),
    );
  }
}
