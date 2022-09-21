import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/widgets/atm_card.dart';

import 'package:pavilion_dashboard/widgets/mobile_account_preview.dart';
import 'package:pavilion_dashboard/widgets/reward_confirmation.dart';
import 'package:pavilion_dashboard/widgets/transaction.dart';

class MobilePreview extends StatelessWidget {
  const MobilePreview({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const MobileAccountDetails(),
        Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              RewardConfirmation(
                  height: 120, isMobile: true, width: 0.8 * width)
            ],
          ),
        ),
        const ATMCard(
          isMobile: true,
        ),
        const Transactions(
          isMoble: true,
        )
      ],
    );
  }
}
