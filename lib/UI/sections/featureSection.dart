import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth > 900 ? 80.0 : 20.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return screenWidth > 900
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildFeatureColumns(screenWidth),
                )
              : Column(
                  children: _buildFeatureColumns(screenWidth),
                );
        },
      ),
    );
  }

  List<Widget> _buildFeatureColumns(double screenWidth) {
    return [
      _buildFeatureColumn(
        icon: Icons.fast_forward,
        iconColor: Colors.blue,
        backgroundColor: Colors.blue.shade200.withOpacity(0.2),
        title: 'Lightning Fast Downloads',
        description: 'Accelerate your downloads with our advanced technology.',
        screenWidth: screenWidth,
      ),
      _buildFeatureColumn(
        icon: Icons.security,
        iconColor: Colors.blue,
        backgroundColor: Colors.blue.shade200.withOpacity(0.2),
        title: 'Secure and Private',
        description:
            'Your data stays on your device, no servers anywhere logging your activity.',
        screenWidth: screenWidth,
      ),
      _buildFeatureColumn(
        icon: Icons.schedule,
        iconColor: Colors.blue,
        backgroundColor: Colors.blue.shade200.withOpacity(0.2),
        title: 'Bandwidth Friendly',
        description:
            'Downloads use your bandwidth efficiently to get the job done, without hogging resources.',
        screenWidth: screenWidth,
      ),
    ];
  }

  Widget _buildFeatureColumn({
    required IconData icon,
    required Color iconColor,
    required Color backgroundColor,
    required String title,
    required String description,
    required double screenWidth,
  }) {
    final bool isWideScreen = screenWidth > 900;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isWideScreen ? 15.0 : 0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: backgroundColor,
              child: Icon(
                icon,
                color: iconColor,
                size: 35,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                fontSize: isWideScreen ? 22 : 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                fontSize: isWideScreen ? 16 : 14,
                color: Colors.black54,
                fontWeight: isWideScreen ? FontWeight.w500 : FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
