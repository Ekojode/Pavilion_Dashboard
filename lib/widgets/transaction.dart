import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Card(
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Transaction History",
                  style: GoogleFonts.manrope(
                      fontSize: 20,
                      color: const Color(0xff0D073C),
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                const Text("This Month")
              ],
            ),
            DataTable(columnSpacing: width / 30, columns: const [
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Date'),
              ),
              DataColumn(
                label: Text('Time'),
              ),
              DataColumn(
                label: Text('Points'),
              ),
            ], rows: [
              DataRow(
                cells: [
                  DataCell(
                    rowCell(
                      context,
                      const Color(0xff8DD7A8),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12/06/2022',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12:34',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff828185)),
                    ),
                  ),
                  DataCell(
                    Text(
                      '+50points',
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1D964A)),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    rowCell(
                      context,
                      const Color(0xff8DD7A8),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12/06/2022',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12:34',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff828185)),
                    ),
                  ),
                  DataCell(
                    Text(
                      '+50points',
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1D964A)),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    rowCell(
                      context,
                      const Color(0xff8DD7A8),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12/06/2022',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12:34',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff828185)),
                    ),
                  ),
                  DataCell(
                    Text(
                      '+50points',
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1D964A)),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    rowCell(
                      context,
                      const Color(0xff8DD7A8),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12/06/2022',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                  DataCell(
                    Text(
                      '12:34',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff828185)),
                    ),
                  ),
                  DataCell(
                    Text(
                      '+50points',
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff1D964A)),
                    ),
                  ),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}

Widget rowCell(
  BuildContext context,
  Color color,
) {
  return Row(
    children: [
      CircleAvatar(
        radius: 22,
        backgroundColor: color,
        child: const Icon(Icons.redeem_outlined),
      ),
      const SizedBox(width: 10),
      Text(
        "SuperMart",
        style: GoogleFonts.manrope(
            color: const Color(0xff0D073C),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      )
    ],
  );
}
