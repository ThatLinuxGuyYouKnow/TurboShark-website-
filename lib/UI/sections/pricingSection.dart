import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      color: const Color.fromARGB(255, 182, 219, 248).withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 100,
          horizontal: screenWidth > 900 ? 80 : 20,
        ),
        child: Column(
          children: [
            Text(
              'Pricing Plans',
              style: GoogleFonts.ubuntu(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 60),
            LayoutBuilder(
              builder: (context, constraints) {
                return screenWidth > 900
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPricingCards(screenWidth),
                      )
                    : Column(
                        children: _buildPricingCards(screenWidth),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPricingCards(double screenWidth) {
    return [
      _buildPricingSection(
        headerText: 'Free',
        price: '0',
        benefits: [
          'Unlimited Downloads',
          'High-Speed Downloads',
        ],
        accentColor: Colors.blue,
        isRecommended: false,
      ),
      SizedBox(width: screenWidth > 900 ? 30 : 0),
      _buildPricingSection(
        headerText: 'Also Free',
        price: '0',
        benefits: [
          'Unlimited Downloads',
          'High-Speed Downloads',
          'Priority Support',
          'Advanced Features',
        ],
        accentColor: Colors.blue,
        isRecommended: true,
      ),
      SizedBox(width: screenWidth > 900 ? 30 : 0),
      _buildPricingSection(
        headerText: 'Guess What? Also Free!',
        price: '0',
        benefits: [
          'Unlimited Downloads',
          'Maximum Speed',
          'No hidden costs',
          "Seriously, it's open source"
        ],
        accentColor: Colors.blue,
        isRecommended: false,
      ),
    ];
  }

  Widget _buildPricingSection({
    required String headerText,
    required String price,
    required List<String> benefits,
    required Color accentColor,
    required bool isRecommended,
  }) {
    return Expanded(
      child: Container(
        height: 500,
        width: 100,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isRecommended ? accentColor : Colors.grey.shade300,
            width: isRecommended ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                headerText,
                style: GoogleFonts.ubuntu(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: accentColor,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: price == 'Custom' ? price : '\$$price',
                      style: GoogleFonts.ubuntu(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: price == 'Custom' ? '' : '/mo',
                      style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ...benefits.map((benefit) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: accentColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            benefit,
                            style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: isRecommended ? accentColor : Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
