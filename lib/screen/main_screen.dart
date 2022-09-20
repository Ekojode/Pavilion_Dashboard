import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/screen/main_dashboard.dart';
import 'package:pavilion_dashboard/widgets/sidemenu.dart';
import '../responsive.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7FE),
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(child: SideMenu()),
            const Expanded(flex: 5, child: DashBoard())
          ],
        ),
      ),
    );
  }
}
