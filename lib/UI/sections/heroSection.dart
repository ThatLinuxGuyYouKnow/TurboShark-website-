import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(color: Colors.blue.shade500),
    );
  }
}
