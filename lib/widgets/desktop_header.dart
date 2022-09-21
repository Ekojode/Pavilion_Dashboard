import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/menu_controller.dart';
import '../responsive.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (Responsive.isTablet(context))
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          Text(
            "DashBoard",
            style:
                GoogleFonts.manrope(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          const SizedBox(width: 10),
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/profile_image.png"),
          )
        ],
      ),
    );
  }
}
