import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class ATMCard extends StatelessWidget {
  const ATMCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: CreditCardWidget(
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
