import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavilion_dashboard/constants.dart';

class Transactions extends StatefulWidget {
  final bool isMoble;
  const Transactions({super.key, required this.isMoble});

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
    if ((width < 500) || (width > 799)) {
      return Container(
        margin: width > 500 && width < 800 ? const EdgeInsets.all(20) : null,
        child: Card(
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
                          fontSize: widget.isMoble ? 14 : 20,
                          color: const Color(0xff0D073C),
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    DropdownButton(
                        style: TextStyle(
                            fontSize: widget.isMoble ? 8 : 14,
                            color: deepPurple),
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
                      DataColumn(label: textStyle("Name")),
                      DataColumn(label: textStyle("Date")),
                      DataColumn(label: textStyle("Time")),
                      DataColumn(label: textStyle("Points")),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            rowCell(context, const Color(0xff8DD7A8),
                                const Color(0xff1D964A), widget.isMoble),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey,
                                widget.isMoble ? 8 : 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34",
                              const Color(0xff828185),
                              widget.isMoble ? 8 : 12)),
                          DataCell(cellTextStyle(
                              "+50points",
                              const Color(0xff1D964A),
                              widget.isMoble ? 9 : 16)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            rowCell(context, const Color(0xffE592A5),
                                const Color(0xffE4325A), widget.isMoble),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey,
                                widget.isMoble ? 8 : 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34",
                              const Color(0xff828185),
                              widget.isMoble ? 8 : 12)),
                          DataCell(cellTextStyle("-50points",
                              const Color(0xffE43E64), widget.isMoble ? 9 : 16))
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            rowCell(context, const Color(0xff8DD7A8),
                                const Color(0xff1D964A), widget.isMoble),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey,
                                widget.isMoble ? 8 : 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34",
                              const Color(0xff828185),
                              widget.isMoble ? 8 : 12)),
                          DataCell(cellTextStyle(
                              "+50points",
                              const Color(0xff1D964A),
                              widget.isMoble ? 9 : 16)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            rowCell(context, const Color(0xffE592A5),
                                const Color(0xffE4325A), widget.isMoble),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey,
                                widget.isMoble ? 8 : 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34",
                              const Color(0xff828185),
                              widget.isMoble ? 8 : 12)),
                          DataCell(cellTextStyle(
                              "-50points",
                              const Color(0xffE43E64),
                              widget.isMoble ? 9 : 16)),
                        ],
                      )
                    ])
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: width > 500 && width < 800 ? const EdgeInsets.all(20) : null,
        child: Card(
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
                    columnSpacing: width / 15,
                    // dataRowHeight: 60,
                    // dividerThickness: 0,
                    horizontalMargin: 8,
                    columns: [
                      DataColumn(label: textStyle("Name")),
                      DataColumn(label: textStyle("Date")),
                      DataColumn(label: textStyle("Time")),
                      DataColumn(label: textStyle("Points")),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            tabRowCellStyle(context, const Color(0xff8DD7A8),
                                const Color(0xff1D964A)),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey, 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34", const Color(0xff828185), 12)),
                          DataCell(cellTextStyle(
                              "+50points", const Color(0xff1D964A), 10)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            tabRowCellStyle(context, const Color(0xffE592A5),
                                const Color(0xffE4325A)),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey, 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34", const Color(0xff828185), 12)),
                          DataCell(cellTextStyle(
                              "-50points", const Color(0xffE43E64), 10))
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            tabRowCellStyle(context, const Color(0xff8DD7A8),
                                const Color(0xff1D964A)),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey, 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34", const Color(0xff828185), 12)),
                          DataCell(cellTextStyle(
                              "+50points", const Color(0xff1D964A), 10)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            tabRowCellStyle(context, const Color(0xffE592A5),
                                const Color(0xffE4325A)),
                          ),
                          DataCell(
                            cellTextStyle("12/06/2022", Colors.grey, 12),
                          ),
                          DataCell(cellTextStyle(
                              "12:34", const Color(0xff828185), 12)),
                          DataCell(cellTextStyle(
                              "-50points", const Color(0xffE43E64), 10)),
                        ],
                      )
                    ])
              ],
            ),
          ),
        ),
      );
    }
  }
}

Widget textStyle(String title) {
  return Text(
    title,
    style: GoogleFonts.manrope(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: const Color.fromRGBO(61, 52, 139, 0.6)),
  );
}

Widget cellTextStyle(String title, Color color, double fontSize) {
  return Text(
    title,
    style: GoogleFonts.manrope(
        fontSize: fontSize, fontWeight: FontWeight.w700, color: color),
  );
}

Widget rowCell(
  BuildContext context,
  Color color,
  Color iconColor,
  bool isMobile,
) {
  return Row(
    children: [
      CircleAvatar(
        radius: isMobile ? 12 : 22,
        backgroundColor: color,
        child: Icon(
          Icons.redeem_outlined,
          color: iconColor,
          size: 12,
        ),
      ),
      SizedBox(width: isMobile ? 2 : 10),
      Text(
        "SuperMart",
        style: GoogleFonts.manrope(
            color: const Color(0xff0D073C),
            fontSize: isMobile ? 10 : 16,
            fontWeight: FontWeight.w700),
      )
    ],
  );
}

Widget tabRowCellStyle(
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
          size: 12,
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
