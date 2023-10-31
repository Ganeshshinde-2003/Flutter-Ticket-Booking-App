import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:gap/gap.dart';

class AppTicketDataShow extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secText;
  const AppTicketDataShow({
    super.key,
    required this.firstText,
    required this.secText,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
