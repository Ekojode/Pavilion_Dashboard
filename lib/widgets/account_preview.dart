import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  Widget build(BuildContext context) {
    bool viewBalance = true;

    void switchView() {
      setState(() {
        viewBalance = !viewBalance;
      });
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: ListTile(
        leading: Image.asset(widget.svgPath),
        title: Text(
          widget.title,
          style: GoogleFonts.manrope(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: const Color(0xff0D073C)),
        ),
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
