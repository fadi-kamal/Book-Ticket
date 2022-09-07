import 'package:flutter/material.dart';
import 'package:flyingapp/view/Widget/home/body/custom_footer.dart';
import 'package:flyingapp/view/Widget/home/body/custom_header.dart';
import 'package:flyingapp/view/Widget/home/body/custom_icon_screen.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            CustomeHeader(),
            SizedBox(
              height: 30,
            ),
            CustomIconScreen(),
            SizedBox(
              height: 35,
            ),
            CustomFooter()
          ],
        ),
      ],
    );
  }
}



