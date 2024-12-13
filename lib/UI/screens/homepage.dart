import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/sections/featureSection.dart';
import 'package:turbo_shark_website/UI/sections/heroSection.dart';
import 'package:turbo_shark_website/UI/widgets/appBars.dart';

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          HeroSection(),
          SizedBox(
            height: 100,
          ),
          Text(
            'Features',
            style: GoogleFonts.ubuntu(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 100,
          ),
          FeatureSection()
        ]),
      ),
    );
  }
}
