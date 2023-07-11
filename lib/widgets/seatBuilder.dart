// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seat_finder/widgets/seatWidget.dart';

Row seatBuilder(BuildContext context, int index,List<int> seatBooked) {
  index = index * 4;
  return Row(
    children: [
      seatWidget(context, index + 1,seatBooked),
      const SizedBox(width: 10),
      seatWidget(context, index + 2,seatBooked),
      const SizedBox(width: 10),
      seatWidget(context, index + 3,seatBooked),
      const Spacer(),
      seatWidget(context, index + 4,seatBooked),
    ],
  );
}
