import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight =
        MediaQuery.sizeOf(context).height; // Capture the height
    print('Screen Width: $screenWidth'); //print statement for debugging.
    print('Screen Height: $screenHeight'); //print statement for debugging.
    final bool smallScreen = screenWidth < 600;
    final bool smallScreenHeight = screenHeight < 900;

    return Container(
      height: smallScreenHeight ? 400 : 600,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade700],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: smallScreenHeight ? 80 : 20,
            ),
            Text(
              'Turbo Shark',
              style: GoogleFonts.russoOne(
                color: Colors.white,
                fontSize: smallScreen ? 24 : 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Download FASTER than ever!',
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                fontSize: smallScreen ? 20 : 28,
                letterSpacing: smallScreen ? 0.6 : 1.5,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Swim circles around slow downloads. The fastest download experience*, completely free.',
                style: GoogleFonts.ubuntu(
                  fontSize: smallScreen ? 16 : 20,
                  letterSpacing: 0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: smallScreen
                  ? const Column(
                      children: [
                        HeroButtons(
                          icon: Icon(Icons.download, color: Colors.blue),
                          buttonText: 'Download',
                        ),
                        SizedBox(height: 10),
                        HeroButtons(
                          icon: Icon(Icons.read_more, color: Colors.blue),
                          buttonText: 'Learn More',
                        ),
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeroButtons(
                          icon: Icon(Icons.download, color: Colors.blue),
                          buttonText: 'Download',
                        ),
                        SizedBox(width: 20),
                        HeroButtons(
                          icon: Icon(Icons.read_more, color: Colors.blue),
                          buttonText: 'Learn More',
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
