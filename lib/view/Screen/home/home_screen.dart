import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/home/body/custom_AppBar_Home.dart';
import 'package:flyingapp/view/Widget/home/body_home_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuerySize().init(context);
    return Scaffold(
      appBar: CustomAppBarHome(),
      body: BodyHomeScreen(),
    );
  }
}
