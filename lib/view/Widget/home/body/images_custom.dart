import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/app_colors.dart';
import 'package:flyingapp/core/utils/theme.dart';

class ImagesCustom extends StatelessWidget {
  final String image;
  final String titleText;
  final String disText;

  ImagesCustom({
    Key? key,
    required this.image,
    required this.titleText,
    required this.disText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      height: 310,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(blurRadius: 4, spreadRadius: 1, color: Colors.black26)
          ]),
      child: Column(
        children: [
          Container(
            height: 190,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                         BlendMode.softLight)
                         )
                         ),
                         child: Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.all(15),
                          child: Container(
                            height: 30, 
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white54, 
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.bookmark, color: AppColors.primaryColor,)),
                         ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: AppStyle()
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 25, color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  disText,
                  style: AppStyle().textTheme.headline3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
