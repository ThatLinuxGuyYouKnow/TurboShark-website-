import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 420,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade700]),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Text(
                'Turbo Shark',
                style: GoogleFonts.russoOne(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Download FASTER than ever!',
                style: GoogleFonts.ubuntu(
                  fontSize: 28,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Swim circles around slow downloads. The fastest download experience*, completely free.',
                  style: GoogleFonts.ubuntu(
                    fontSize: 22,
                    letterSpacing: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(
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
      ),
    );
  }
}
