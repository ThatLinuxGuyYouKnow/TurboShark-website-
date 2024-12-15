import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureSection extends StatelessWidget {
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth > 900 ? 80.0 : 10),
      child: Row(
        mainAxisAlignment: screenWidth > 900
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue.shade200.withOpacity(.2),
                  child: const Icon(
                    Icons.fast_forward,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Lightning Fast Downloads',
                  style: GoogleFonts.ubuntu(
                      fontSize: screenWidth > 900 ? 20 : 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Accelerate your downloads with our advanced technology.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: screenWidth > 900 ? 16 : 12,
                    color: Colors.blue,
                    fontWeight:
                        screenWidth > 900 ? FontWeight.w600 : FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue.shade300.withOpacity(.1),
                  child: Icon(
                    Icons.security,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Secure and Private',
                  style: GoogleFonts.ubuntu(
                      fontSize: screenWidth > 900 ? 20 : 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Your data stays on your device, no servers anywhere logging your activity.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: screenWidth > 900 ? 16 : 12,
                    color: Colors.blue,
                    fontWeight:
                        screenWidth > 900 ? FontWeight.w500 : FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue.shade300.withOpacity(.1),
                  child: Icon(
                    Icons.schedule,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Bandwidth Friendly',
                  style: GoogleFonts.ubuntu(
                      fontSize: screenWidth > 900 ? 20 : 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Downloads use your bandwidth efficiently to get the job done, without hogging resources.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: screenWidth > 900 ? 16 : 12,
                    color: Colors.blue,
                    fontWeight:
                        screenWidth > 900 ? FontWeight.w600 : FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
