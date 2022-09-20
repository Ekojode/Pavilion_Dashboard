import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class RewardConfirmation extends StatelessWidget {
  final double height;
  final bool isMobile;
  const RewardConfirmation(
      {super.key, required this.height, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          stops: [0.75, 0.9],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xff5143D2), Color(0xff832F90)],
        ),
      ),
      child: Row(
        children: [
          Container(
            padding:
                isMobile ? const EdgeInsets.all(8) : const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  child: RichText(
                    text: TextSpan(
                      text: "Congratulations",
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: white),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: isMobile ? 120 : 240,
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: white),
                      children: const [
                        TextSpan(
                            text:
                                "You've completed all your tasks for the week and you won "),
                        TextSpan(
                          text: "150 points.",
                          style: TextStyle(
                            color: Color(0xffF18701),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                OutlinedButton(onPressed: () {}, child: Text("Redeem Now!"))
              ],
            ),
          ),
          const Spacer(),
          SizedBox(width: 150, child: Image.asset("assets/images/chest.png"))
        ],
      ),
    );
  }
}
