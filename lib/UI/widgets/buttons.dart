import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroButtons extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  HeroButtons(
      {super.key,
      required String this.buttonText,
      this.icon = const SizedBox.shrink()});
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: 180,
        height: 50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon,
                Text(buttonText,
                    style: GoogleFonts.ubuntu(
                        color: Colors.blue,
                        fontSize: 17,
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
