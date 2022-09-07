import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/app_string.dart';
import 'package:flyingapp/core/utils/assets_image.dart';
import 'package:flyingapp/core/utils/theme.dart';
import 'package:flyingapp/view/Widget/home/body/images_custom.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.popular,
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImagesCustom(
                  image: assetsImages[2],
                  titleText: AppString.newyork,
                  disText: AppString.disOne,
                ),
                ImagesCustom(
                  image: assetsImages[3],
                  titleText: AppString.brooklyn,
                  disText: AppString.disTwo,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
