import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/profile_image.png"),
          ),
          const SizedBox(width: 5),
          Text("Hi Janet,",
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w700, fontSize: 16)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
    );
  }
}
