import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavilion_dashboard/widgets/atm_card.dart';
import 'package:pavilion_dashboard/widgets/image_list.dart';
import '../constants.dart';

class CardPreviewSection extends StatelessWidget {
  const CardPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Cards",
                style: GoogleFonts.manrope(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: deepPurple),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add_circle_outline))
            ],
          ),
          const ATMCard(),
          const SizedBox(height: 5),
          Text(
            "Request Gift",
            textAlign: TextAlign.start,
            style: GoogleFonts.manrope(
                fontSize: 20, fontWeight: FontWeight.w700, color: deepPurple),
          ),
          const SizedBox(height: 5),
          const ImageList()
        ],
      ),
    );
  }
}
