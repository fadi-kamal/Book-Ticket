import 'package:flutter/material.dart';
import 'package:flyingapp/view/Widget/book/body/custom_body.dart';
import 'package:flyingapp/view/Widget/book/body/custom_header_title.dart';
import 'package:flyingapp/view/Widget/book/body/custom_footer.dart';

class BodyBookScreen extends StatelessWidget {
  const BodyBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [CustomHeadrTitle(), CustomBody(), CustomFooter()],
      ),
    );
  }
}
