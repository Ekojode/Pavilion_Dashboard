import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/widgets/atm_card.dart';
import 'package:pavilion_dashboard/widgets/image_list.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';
import '../constants.dart';
import '../responsive.dart';
import 'card_promo.dart';

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
              const ManRopeText(
                  text: "Cards",
                  fontSize: 20,
                  color: deepPurple,
                  fontWeight: FontWeight.w700),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add_circle_outline))
            ],
          ),
          const ATMCard(
            isMobile: false,
          ),
          const SizedBox(height: 5),
          const ManRopeText(
              text: "Request Gift",
              fontSize: 20,
              color: deepPurple,
              fontWeight: FontWeight.w700),
          const SizedBox(height: 5),
          const ImageList(),
          const SizedBox(height: 5),
          Responsive.isDesktop(context)
              ? const PromoCard(isDesktop: true)
              : const PromoCard(isDesktop: false)
        ],
      ),
    );
  }
}
