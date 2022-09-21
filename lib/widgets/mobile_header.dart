import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/profile_image.png"),
          ),
          const SizedBox(width: 5),
          const ManRopeText(
              text: "Hi Janet,",
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w700),
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
