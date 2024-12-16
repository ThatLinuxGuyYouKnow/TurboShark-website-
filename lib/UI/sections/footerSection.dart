import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobileScreen = MediaQuery.of(context).size.width < 600;
    return Container(
      height: 100,
      color: Colors.blue.shade300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Image(
                  height: 80,
                  width: 80,
                  image: AssetImage('logo.png'),
                ),
                SizedBox(width: isMobileScreen ? 16 : 2),
                Text(
                  'Turbo Shark',
                  style: GoogleFonts.russoOne(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '© 2024 Turbo Shark',
              style: GoogleFonts.ubuntu(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
