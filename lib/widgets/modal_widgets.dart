import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:seat_finder/constants.dart';

showBookingDone(BuildContext context, int ticketNumber) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(FontAwesome.cancel_circled),
                iconSize: 22,
                color: Colors.red),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 12, bottom: 15),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Ticket with Ticket Number $ticketNumber \nhas been booked successfully!',
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: secondaryColor),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Go Back',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      });
}

showBookingError(BuildContext context, String error) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(FontAwesome.cancel_circled),
                iconSize: 22,
                color: Colors.red),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 12, bottom: 15),
                child: Column(
                  children: [
                    Text(
                      error,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: secondaryColor),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: const Text(
                                  'Go Back',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      });
}
