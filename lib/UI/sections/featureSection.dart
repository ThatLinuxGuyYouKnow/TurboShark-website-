import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 500,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue.shade300.withOpacity(.1),
                          child: Icon(Icons.fast_forward),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Lightning Fast Downloads',
                          style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Accelerate your downloads with our advanced technology.',
                          style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
