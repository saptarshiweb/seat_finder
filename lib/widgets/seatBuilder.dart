// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seat_finder/widgets/seatWidget.dart';

Row seatBuilder(BuildContext context, int index) {
  index = index * 4;
  return Row(
    children: [
      seatWidget(context, index + 1),
      const SizedBox(width: 10),
      seatWidget(context, index + 2),
      const SizedBox(width: 10),
      seatWidget(context, index + 3),
      const Spacer(),
      seatWidget(context, index + 4),
    ],
  );
}
