import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/Auth/body/custom_AppBar_logIn.dart';
import 'package:flyingapp/view/Widget/Auth/body_register_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    MediaQuerySize().init(context);
    return Scaffold(
      appBar: CustomeAppBarLogin(onTap: (val) {
        setState(() {
          if (val == 0) {
            isActive = false;
          } else {
            isActive = true;
          }
          print(isActive);
        });
      }),
      body: BodyLogIn(
        isActive: isActive,
      ),
    );
  }
}
