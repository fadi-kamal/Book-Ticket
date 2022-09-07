import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/theme.dart';
import 'package:flyingapp/view/Screen/Auth/register_screen.dart';

class FlyingApp extends StatelessWidget {
  const FlyingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppStyle(),
      home: RegisterScreen() 
        
      // routes: appRoutes,
    );
  }
}
