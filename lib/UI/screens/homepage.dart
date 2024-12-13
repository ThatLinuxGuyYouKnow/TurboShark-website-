import 'package:flutter/material.dart';
import 'package:turbo_shark_website/UI/sections/heroSection.dart';

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [HeroSection()]),
      ),
    );
  }
}
