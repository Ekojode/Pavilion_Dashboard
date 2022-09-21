import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class AccountPreview extends StatefulWidget {
  final String title;
  final String svgPath;
  final double balance;
  final Color bgColor;
  final bool isMobile;
  final double width;
  const AccountPreview(
      {super.key,
      required this.title,
      required this.svgPath,
      required this.balance,
      required this.bgColor,
      required this.isMobile,
      this.width = 280});

  @override
  State<AccountPreview> createState() => _AccountPreviewState();
}

class _AccountPreviewState extends State<AccountPreview> {
  bool viewBalance = true;

  void switchView() {
    setState(() {
      viewBalance = !viewBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: ListTile(
        minVerticalPadding: 8,
        horizontalTitleGap: widget.isMobile ? 4 : null,
        leading: Image.asset(
          widget.svgPath,
          width: widget.isMobile ? 27 : null,
          height: widget.isMobile ? 25 : null,
        ),
        title: ManRopeText(
            text: widget.title,
            fontSize: widget.isMobile ? widget.width / 40 : 22,
            color: widget.isMobile ? white : deepPurple,
            fontWeight: FontWeight.w700),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            viewBalance
                ? ManRopeText(
                    text: widget.isMobile
                        ? "₦ ${widget.balance}"
                        : "₦ ${widget.balance}:00",
                    fontSize: widget.isMobile ? widget.width / 46.5 : 14,
                    color: widget.isMobile ? white : Colors.grey,
                    fontWeight: FontWeight.normal)
                : Text(
                    "-------",
                    style: TextStyle(color: widget.isMobile ? white : null),
                  ),
            IconButton(
              onPressed: switchView,
              icon: Icon(
                viewBalance ? Icons.visibility_off : Icons.visibility,
                color: widget.isMobile ? white : null,
                size: widget.isMobile ? 10 : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
