import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    bool smallScreen = screenWidth < 600;
    final bool smallscreenHeight = MediaQuery.of(context).size.height < 900;
    return Container(
      height: smallScreen ? 300 : 600,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade700]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: smallscreenHeight ? 80 : 160,
            ),
            Text(
              'Turbo Shark',
              style: GoogleFonts.russoOne(
                color: Colors.white,
                fontSize: smallScreen ? 28 : 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Download FASTER than ever!',
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                fontSize: smallScreen ? 24 : 28,
                letterSpacing: smallScreen ? 0.6 : 1.5,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Swim circles around slow downloads. The fastest download experience*, completely free.',
                style: GoogleFonts.ubuntu(
                  fontSize: smallScreen ? 20 : 22,
                  letterSpacing: 0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 700), //TODO: Make responsive
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HeroButtons(
                      icon: Icon(
                        Icons.download,
                      ),
                      buttonText: 'Download'),
                  HeroButtons(
                    buttonText: 'Learn More',
                    icon: Icon(Icons.read_more),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
