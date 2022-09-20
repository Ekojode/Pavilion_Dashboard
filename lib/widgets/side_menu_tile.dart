import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../constants.dart';

class SideMenuTile extends StatelessWidget {
  final String title;
  final IconData icon;

  final bool isActive;
  const SideMenuTile(
      {super.key,
      required this.title,
      required this.icon,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: Icon(
          icon,
          color: isActive ? purple : purple.withOpacity(0.3),
        ),
        title: AutoSizeText(
          title,
          maxLines: 2,
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: isActive ? purple : purple.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
