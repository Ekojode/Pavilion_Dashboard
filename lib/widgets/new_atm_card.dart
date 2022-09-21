import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class NewATM extends StatelessWidget {
  const NewATM({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    if (width >= 800) {
      return atm(width * 0.3, 22);
    } else if (width < 800 && width > 500) {
      return atm(width * 0.6, 18);
    } else {
      return atm(width * 0.9, 14);
    }
  }
}

Widget atm(double width, double fontSize) {
  return SizedBox(
      child: CreditCardWidget(
    isHolderNameVisible: true,
    cardBgColor: purple,
    obscureCardNumber: false,
    cardType: CardType.mastercard,
    width: width,
    height: width / 1.6,
    cardNumber: "1234 5678 9012 3456",
    expiryDate: "12/34",
    cardHolderName: "Janet Doe",
    cvvCode: "123",
    showBackView: false,
    onCreditCardWidgetChange: (creditCardBrand) {},
  ));
}


 // return Container(
  //   padding: const EdgeInsets.all(1),
  //   width: width,
  //   height: width / 1.6,
  //   decoration:
  //       BoxDecoration(borderRadius: BorderRadius.circular(12), color: purple),
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           ManRopeText(
  //               text: "Virtual Naira Card",
  //               fontSize: fontSize,
  //               color: white,
  //               fontWeight: FontWeight.w700),
  //           ManRopeText(
  //               text: "1234 5678 9012 3456",
  //               fontSize: fontSize,
  //               color: white,
  //               fontWeight: FontWeight.w700),
  //           Row(
  //             children: [
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ManRopeText(
  //                       text: "Expiry Date",
  //                       fontSize: fontSize / 1.4,
  //                       color: white,
  //                       fontWeight: FontWeight.w700),
  //                   ManRopeText(
  //                       text: "1234",
  //                       fontSize: fontSize / 1.4,
  //                       color: white,
  //                       fontWeight: FontWeight.w700),
  //                 ],
  //               ),
  //               SizedBox(width: fontSize / 2.5),
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ManRopeText(
  //                       text: "CVV",
  //                       fontSize: fontSize / 1.4,
  //                       color: white,
  //                       fontWeight: FontWeight.w700),
  //                   ManRopeText(
  //                       text: "123",
  //                       fontSize: fontSize / 1.4,
  //                       color: white,
  //                       fontWeight: FontWeight.w700),
  //                 ],
  //               )
  //             ],
  //           ),
  //           ManRopeText(
  //               text: "Janet M Doe",
  //               fontSize: fontSize,
  //               color: white,
  //               fontWeight: FontWeight.w700),
  //         ],
  //       ),
  //       SizedBox(
  //         width: width * 0.3,
  //         child: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [
  //               Image.asset("assets/images/white_logo.png"),
  //               Image.asset("assets/images/mastercard.png")
  //             ]),
  //       )
  //     ],
  //   ),
  // );