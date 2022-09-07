import 'package:flutter/material.dart';
import 'package:flyingapp/view/Widget/book/body/custombody/data_card.dart';
import 'package:flyingapp/view/Widget/book/body/custombody/travelling_card.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TravellingCard(),
        DataCard()
       
       ],
    );
  }
}