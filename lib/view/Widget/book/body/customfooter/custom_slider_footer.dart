import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/view/Widget/book/body/customfooter/custom_container_card.dart';

class CustomSliderFooter extends StatelessWidget {
  const CustomSliderFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomContainerCard(
            BackGroundColor: AppColors.teal,
          ),
          CustomContainerCard(BackGroundColor: AppColors.purple400),
          CustomContainerCard(
            BackGroundColor: AppColors.org.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}

