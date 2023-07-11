// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seat_finder/constants.dart';

Widget seatWidget(BuildContext context, int seatNum) {
  String seatType = "";
  if (seatNum % 4 == 1) {
    seatType = "LOWER";
  } else if (seatNum % 4 == 2) {
    seatType = "MIDDLE";
  } else if (seatNum % 4 == 3) {
    seatType = "UPPER";
  } else {
    seatType = "SIDE";
  }
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width * 0.2,
    decoration:
        BoxDecoration(color: seatColor, borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            seatNum.toString(),
            style: TextStyle(
                color: primaryColor, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            seatType,
            style: TextStyle(
                color: secondaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
