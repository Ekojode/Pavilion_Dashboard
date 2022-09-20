import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/widgets/side_menu_promo.dart';
import '../widgets/side_menu_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Image.asset(
                "assets/images/pavilion_logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SideMenuTile(
              title: "Dashboard", icon: Icons.home_outlined, isActive: true),
          const SideMenuTile(
              title: "Transfer Funds", icon: Icons.card_membership),
          const SideMenuTile(title: "History", icon: Icons.show_chart),
          const SideMenuTile(title: "Cards", icon: Icons.credit_card),
          const SideMenuTile(title: "Settings", icon: Icons.settings),
          const SizedBox(height: 10),
          const SMPromo(),
        ],
      ),
    );
  }
}
