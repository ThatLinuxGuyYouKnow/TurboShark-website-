import 'package:flutter/material.dart';
import 'package:turbo_shark_website/UI/sections/heroSection.dart';
import 'package:turbo_shark_website/UI/widgets/appBars.dart';

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          HeroSection(),
          Container(height: 800, color: Colors.yellow)
        ]),
      ),
    );
  }
}
