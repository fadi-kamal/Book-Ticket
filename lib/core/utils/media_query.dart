
import 'package:flutter/cupertino.dart';

class MediaQuerySize {
  static MediaQueryData? _mediaQueryData;
  static  double? screenHeight;
  static  double? screenWidth;

  init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
  }
}
