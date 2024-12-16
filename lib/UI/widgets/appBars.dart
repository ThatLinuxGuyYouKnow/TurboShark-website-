import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobileScreen = MediaQuery.of(context).size.width < 600;
    return AppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                height: 90,
                width: 90,
                image: AssetImage('assets/logo.png'),
              ),
              SizedBox(
                width: isMobileScreen ? 30 : 5,
              ),
              Text(
                'Turbo Shark',
                style: GoogleFonts.russoOne(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                  height: 60,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'FAQ',
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Contribute',
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Features',
                style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4285F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Download',
                      style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class MobileScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isSmallScreen;
  const MobileScreenAppBar({super.key, required this.isSmallScreen});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Image(
                height: 90,
                width: 90,
                image: AssetImage('assets/logo.png'),
              ),
              const SizedBox(width: 5),
              Text(
                'Turbo Shark',
                style: GoogleFonts.russoOne(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                  height: 60,
                ),
              ),
            ],
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.black),
            onSelected: (value) {
              debugPrint('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'Features',
                  child: Text(
                    'Features',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'Contribute',
                  child: Text(
                    'Contribute',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'FAQ',
                  child: Text(
                    'FAQ',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
