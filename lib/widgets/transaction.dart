import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  var items = [
    'This month',
    'This week',
    'This year',
  ];
  String dropDownValue = "This month";
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
                DropdownButton(
                    icon: const Icon(Icons.keyboard_arrow_down),
                    value: dropDownValue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    })
              ],
            ),
            DataTable(
                columnSpacing: width / 35,
                dataRowHeight: 60,
                dividerThickness: 0,
                horizontalMargin: 8,
                columns: [
                  DataColumn(
                    label: Text(
                      'Name',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(61, 52, 139, 0.6)),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Date',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(61, 52, 139, 0.6)),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Time',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(61, 52, 139, 0.6)),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Points',
                      style: GoogleFonts.manrope(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(61, 52, 139, 0.6)),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        rowCell(context, const Color(0xff8DD7A8),
                            const Color(0xff1D964A)),
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
                          const Color(0xffE592A5),
                          const Color(0xffE4325A),
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
                            color: const Color(0xffE43E64),
                          ),
                        ),
                      )
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        rowCell(context, const Color(0xff8DD7A8),
                            const Color(0xff1D964A)),
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
                        rowCell(context, const Color(0xffE592A5),
                            const Color(0xffE4325A)),
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
                              color: const Color(0xffE43E64)),
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
  Color iconColor,
) {
  return Row(
    children: [
      CircleAvatar(
        radius: 22,
        backgroundColor: color,
        child: Icon(
          Icons.redeem_outlined,
          color: iconColor,
        ),
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
