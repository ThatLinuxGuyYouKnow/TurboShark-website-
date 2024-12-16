import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turbo_shark_website/UI/sections/faqSection.dart';
import 'package:turbo_shark_website/UI/sections/featureSection.dart';
import 'package:turbo_shark_website/UI/sections/footerSection.dart';
import 'package:turbo_shark_website/UI/sections/heroSection.dart';
import 'package:turbo_shark_website/UI/sections/pricingSection.dart';
import 'package:turbo_shark_website/UI/widgets/appBars.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    final isSmallHeight = MediaQuery.of(context).size.height < 900;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: isSmallScreen
          ? MobileScreenAppBar(
              isSmallScreen: isSmallScreen,
            )
          : const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          HeroSection(),
          SizedBox(
            height: isSmallHeight ? 60 : 100,
          ),
          Text(
            'Features',
            style: GoogleFonts.ubuntu(
                fontSize: isSmallScreen ? 30 : 40,
                fontWeight: isSmallScreen ? FontWeight.w800 : FontWeight.bold,
                color: Colors.blue),
          ),
          SizedBox(
            height: isSmallHeight ? 60 : 100,
          ),
          FeatureSection(),
          SizedBox(
            height: isSmallHeight ? 100 : 150,
          ),
          PricingSection(
            isSmallScreen: isSmallScreen,
            smallScreenHeight: isSmallHeight,
          ),
          SizedBox(
            height: isSmallHeight ? 60 : 100,
          ),
          Text(
            'Frequently Asked Questions',
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
                fontSize: isSmallScreen ? 30 : 40,
                fontWeight: isSmallScreen ? FontWeight.w800 : FontWeight.bold,
                color: Colors.blue),
          ),
          const SizedBox(
            height: 50,
          ),
          FAQSection(),
          const SizedBox(
            height: 50,
          ),
          const FooterSection()
        ]),
      ),
    );
  }
}
