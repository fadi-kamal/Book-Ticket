import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/ticket/body/CustomBody/card_details.dart';

class CustomBody extends StatelessWidget {
  final bool? isActive;
  const CustomBody({
    this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CardDetails( isActive: false,),
      
      Container(
        margin: EdgeInsets.only(top: MediaQuerySize.screenHeight! * 0.45),
        child: CardDetails( isActive: true,)),
      ],
    );
  }
}
