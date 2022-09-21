import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/screen/main_dashboard.dart';
import 'package:pavilion_dashboard/widgets/sidemenu.dart';
import 'package:provider/provider.dart';
import '../controller/menu_controller.dart';
import '../responsive.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      backgroundColor: const Color(0xffF7F7FE),
      drawer: Responsive.isTablet(context)
          ? const SideMenu(
              isDesktop: false,
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                  child: SideMenu(
                isDesktop: true,
              )),
            const Expanded(flex: 5, child: DashBoard())
          ],
        ),
      ),
    );
  }
}
