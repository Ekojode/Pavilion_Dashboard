import 'package:flutter/material.dart';

import '../constants.dart';
import 'account_preview.dart';

class MobileAccountDetails extends StatelessWidget {
  const MobileAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              Expanded(
                child: AccountPreview(
                    width: width,
                    isMobile: true,
                    title: "Wallet Balance",
                    svgPath: "assets/images/mobile_wallet.png",
                    balance: 2342,
                    bgColor: purple),
              ),
              Expanded(
                child: AccountPreview(
                    width: width,
                    isMobile: true,
                    title: "Reward Balance",
                    svgPath: "assets/images/mobile_rewards.png",
                    balance: 2342,
                    bgColor: purple),
              )
            ],
          ),
        ),
      ),
    );
  }
}
