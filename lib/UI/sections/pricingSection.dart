import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingSection extends StatelessWidget {
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      color: Colors.blue.shade300.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Text(
              'Prcing Plans',
              style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
