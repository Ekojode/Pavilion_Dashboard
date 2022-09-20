import 'package:flutter/cupertino.dart';

import 'package:pavilion_dashboard/widgets/account_preview.dart';
import 'package:pavilion_dashboard/widgets/reward_confirmation.dart';
import 'package:pavilion_dashboard/widgets/transaction.dart';

class DashBoardPreview extends StatelessWidget {
  const DashBoardPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: AccountPreview(
                      title: "Wallet Balance",
                      svgPath: "assets/images/wallet_icon.png",
                      balance: 2342.00),
                ),
                SizedBox(width: 10),
                Expanded(
                    child: AccountPreview(
                  title: "Reward Balance",
                  svgPath: "assets/images/icon_reward.png",
                  balance: 2342.00,
                ))
              ],
            ),
            const SizedBox(height: 10),
            const RewardConfirmation(height: 150, isMobile: false),
            const SizedBox(height: 10),
            const Transactions()
          ],
        ),
      ),
    );
  }
}
