import 'package:flutter/material.dart';
import 'package:flyingapp/view/Screen/home/home_screen.dart';

class Route {
  static const String homeScreen = "HomeScreen";
}

Map appRoutes = {
  Route.homeScreen: MaterialPageRoute(
    builder: (context) => HomeScreen(),
  )
};
