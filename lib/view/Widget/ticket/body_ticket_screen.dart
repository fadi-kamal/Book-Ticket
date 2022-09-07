import 'package:flutter/material.dart';
import 'package:flyingapp/view/Widget/ticket/body/custom_body.dart';
import 'package:flyingapp/view/Widget/ticket/body/custom_footer.dart';
import 'package:flyingapp/view/Widget/ticket/body/custom_header.dart';

class BodyTicketScreen extends StatelessWidget {
  BodyTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomHeader(),
        CustomBody(),
        CustomFooter(
        )
      ],
    );
  }
}
