import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8))),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconPack("Home", Icons.home_filled, true),
          iconPack("Payment", Icons.payments_rounded, false),
          iconPack("Cards", Icons.payment_rounded, false),
          iconPack("Settings", Icons.settings, false),
        ],
      ),
    );
  }
}

Widget iconPack(String label, IconData icon, bool isActive) {
  return Column(
    children: [
      Icon(
        icon,
        color: isActive ? purple : Colors.grey,
      ),
      ManRopeText(
          text: label,
          fontSize: 10,
          color: isActive ? purple : Colors.grey,
          fontWeight: FontWeight.w600)
    ],
  );
}
