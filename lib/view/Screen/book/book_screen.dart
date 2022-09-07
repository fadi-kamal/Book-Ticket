import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/book/body/custom_AppBar_book.dart';
import 'package:flyingapp/view/Widget/book/body_book_screen.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuerySize().init(context);
    return Scaffold(
      appBar: CustomAppBarBook(),
      body: BodyBookScreen(),
    );
  }
}


