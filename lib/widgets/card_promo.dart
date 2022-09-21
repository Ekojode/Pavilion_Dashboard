import 'package:flutter/material.dart';
import 'package:pavilion_dashboard/constants.dart';
import 'package:pavilion_dashboard/widgets/manrope_text.dart';

class PromoCard extends StatelessWidget {
  final bool isDesktop;
  const PromoCard({super.key, required this.isDesktop});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/space.png"),
          ),
        ),
        child: SizedBox(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ManRopeText(
                        text: "SPACE",
                        fontSize: 22,
                        color: white,
                        fontWeight: FontWeight.w700),
                    const ManRopeText(
                        text: "ODESSEY",
                        fontSize: 22,
                        color: white,
                        fontWeight: FontWeight.w700),
                    SizedBox(
                      width: 100,
                      child: Image.asset(
                        "assets/images/spaceship.png",
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                child: CustomPaint(
                  painter: Chevron(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ManRopeText(
                            text: "PLAY FREE",
                            fontSize: 17,
                            color: white,
                            fontWeight: FontWeight.w700),
                        const ManRopeText(
                            text: "GAMES",
                            fontSize: 17,
                            color: orange,
                            fontWeight: FontWeight.w700),
                        const ManRopeText(
                            text: "EARN BIG",
                            fontSize: 17,
                            color: white,
                            fontWeight: FontWeight.w700),
                        SizedBox(width: isDesktop ? 180 : 125),
                        Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                              color: orange,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class Chevron extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var gradient = const Color(0xff6941AE);

    final Paint paint = Paint()..color = gradient;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 4, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
