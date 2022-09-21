import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class ATMCard extends StatelessWidget {
  final bool isMobile;
  const ATMCard({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final cardWidth = isMobile ? 0.8 * deviceWidth : 0.25 * deviceWidth;
    final cardHeight = cardWidth / 1.6;
    return SizedBox(
        child: CreditCardWidget(
      cardType: CardType.mastercard,
      width: cardWidth,
      height: cardHeight,
      cardNumber: "1234 5678 9012 3456",
      expiryDate: "12/34",
      cardHolderName: "Janet Doe",
      cvvCode: "123",
      showBackView: false,
      onCreditCardWidgetChange: (creditCardBrand) {},

      // customCardTypeIcons:  [
      //   CustomCardTypeIcon(cardType: CardType.mastercard, cardImage: cardImage)
      // ],
    ));
  }
}
