import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/book/body/customheader/card_header.dart';
import 'package:flyingapp/view/Widget/book/body/customheader/title_header.dart';

class CustomHeadrTitle extends StatelessWidget {
  const CustomHeadrTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleHeader(),
        CardHeader(),
     SizedBox(height: MediaQuerySize.screenHeight! * 0.04,)
      ],
    );
  }
}


