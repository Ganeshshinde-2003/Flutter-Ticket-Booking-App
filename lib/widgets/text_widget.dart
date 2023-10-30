import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const AppDoubleTextWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text1,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("HII THERE");
          },
          child: Text(
            text2,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
