import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final names = ["Alice", "Alice", "Alice", "Alice", "Alice"];
    final imagePath = [
      "assets/images/max.png",
      "assets/images/max2.png",
      "assets/images/alice.png",
      "assets/images/alice2.png",
      "assets/images/alice3.png",
    ];
    return SizedBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildImage(context, imagePath[0], names[0]),
        buildImage(context, imagePath[1], names[1]),
        buildImage(context, imagePath[2], names[2]),
        buildImage(context, imagePath[3], names[3]),
        buildImage(context, imagePath[4], names[4]),
      ],
    ));
  }
}

Widget buildImage(BuildContext context, String imagePath, String name) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imagePath),
      ),
      const SizedBox(height: 5),
      ManRopeText(
          text: name,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w700)
    ],
  );
}
