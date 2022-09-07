import 'package:flutter/material.dart';
import 'package:flyingapp/core/utils/media_query.dart';
import 'package:flyingapp/view/Widget/ticket/body/custom_AppBar_ticket.dart';
import 'package:flyingapp/view/Widget/ticket/body_ticket_screen.dart';

class TicketScree extends StatelessWidget {
  const TicketScree({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuerySize().init(context);
    return Scaffold(
      appBar: CustomAppBarTicket(),
      body: BodyTicketScreen(),
    );
  }
}
