import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class SMPromo extends StatelessWidget {
  const SMPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: purple,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/celebration.png",
            // scale: 0.5,
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xff988DFC),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "CLAIM YOUR",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                      color: white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("POINTS",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.manrope(
                          color: orange,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Text("AND SHOP",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.manrope(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xff0D073B)),
                      backgroundColor: const Color(0xffF7F7FE),
                      foregroundColor: const Color(0xff0D073B),
                    ),
                    child: const Text("Shop"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
