import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: screenWidth,
      decoration: BoxDecoration(color: Colors.blue.shade500),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text('Turbo Shark',
                style: GoogleFonts.russoOne(color: Colors.white, fontSize: 30))
          ],
        ),
      ),
    );
  }
}
