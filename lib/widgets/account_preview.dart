import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class AccountPreview extends StatefulWidget {
  final String title;
  final String svgPath;
  final double balance;
  const AccountPreview(
      {super.key,
      required this.title,
      required this.svgPath,
      required this.balance});

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: ListTile(
        leading: Image.asset(widget.svgPath),
        title: ManRopeText(
            text: widget.title,
            fontSize: 22,
            color: deepPurple,
            fontWeight: FontWeight.w700),
        subtitle: Row(
          children: [
            viewBalance
                ? Text("₦ ${widget.balance}:00")
                : const Text("-------"),
            const Spacer(),
            IconButton(
              onPressed: switchView,
              icon: Icon(
                viewBalance ? Icons.visibility_off : Icons.visibility,
              ),
            )
          ],
        ),
      ),
    );
  }
}
