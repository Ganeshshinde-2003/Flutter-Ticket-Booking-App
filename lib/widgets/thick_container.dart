import 'package:flutter/material.dart';

class ThinkContainer extends StatelessWidget {
  const ThinkContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: Colors.white,
        ),
      ),
    );
  }
}
