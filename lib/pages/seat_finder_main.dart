import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seat_finder/constants.dart';
import 'package:seat_finder/widgets/modal_widgets.dart';
import 'package:seat_finder/widgets/seatBuilder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SeatFinderMain extends StatefulWidget {
  const SeatFinderMain({super.key});

  @override
  State<SeatFinderMain> createState() => _SeatFinderMainState();
}

class _SeatFinderMainState extends State<SeatFinderMain> {
  int totalSeats = 60;
  int totalRows = 15;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.white),
          toolbarHeight: 0,
          elevation: 0), //no APPBAR

      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 10),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seat Finder',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              searchWidget(context),
              const SizedBox(height: 30),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: totalRows,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 4),
                      child: seatBuilder(context, index),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget searchWidget(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        // final int? counter = prefs.getInt('counter');
        // print(counter);
        FocusManager.instance.primaryFocus?.unfocus();

        //send controller text as int to showBookingDone
        int val;
        val = int.parse(_controller.text);
        if (_controller.text == "") {
          showBookingError(context, "Enter Seat Number First !\n Try Again.");
        } else if (val == 0 || val > 60) {
          showBookingError(context, "Seat Number Does not Exist.");
        } else {
          showBookingDone(context, int.parse(_controller.text));
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: secondaryColor, width: 2),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter the Seat Number",
                      hintStyle: TextStyle(
                          color: secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    controller: _controller,
                    keyboardType: TextInputType.number,
                  ),
                )),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(color: secondaryColor),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Find',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
