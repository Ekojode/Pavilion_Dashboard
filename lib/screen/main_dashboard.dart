import 'package:flutter/cupertino.dart';
import 'package:pavilion_dashboard/responsive.dart';
import 'package:pavilion_dashboard/widgets/card_preview_section.dart';
import 'package:pavilion_dashboard/widgets/dashboard_preview.dart';
import 'package:pavilion_dashboard/widgets/desktop_header.dart';
import 'package:pavilion_dashboard/widgets/mobile_header.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Responsive.isDesktop(context)
              ? const DesktopHeader()
              : const MobileHeader(),
          Row(
            children: const [
              Expanded(flex: 5, child: DashBoardPreview()),
              Expanded(flex: 3, child: CardPreviewSection())
            ],
          )
        ],
      ),
    ));
  }
}
