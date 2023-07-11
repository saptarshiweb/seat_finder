import 'package:flutter/material.dart';
import 'package:seat_finder/pages/seat_finder_main.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Lato'),
    home: const SeatFinderMain(),
    debugShowCheckedModeBanner: false,
  ));
}
