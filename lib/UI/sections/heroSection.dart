import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 600,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xFF4285F4),
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
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Download FASTER than ever!',
                style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'The most powerful* and user-friendly download manager for all your needs. And it\'s completely free!',
                  style: GoogleFonts.ubuntu(
                    fontSize: 25,
                    letterSpacing: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 500), //TODO: Make responsive
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
