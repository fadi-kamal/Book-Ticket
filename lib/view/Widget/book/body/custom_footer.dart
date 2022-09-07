import 'package:flutter/material.dart';
import 'package:flyingapp/view/Widget/book/body/customfooter/custom_slider_footer.dart';
import 'package:flyingapp/view/Widget/book/body/customfooter/custom_title_footer.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CustomTitleFooter(),
          CustomSliderFooter()
        ],
      ),
    );
  }
}

