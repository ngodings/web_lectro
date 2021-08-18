import 'package:flutter/material.dart';
import 'package:web_lectro/CalendarSpace/src/CalendarSection.dart';
import 'package:web_lectro/CalendarSpace/src/MeetingSection.dart';
import 'package:web_lectro/CalendarSpace/src/TopContainer.dart';

class CalendarSpace extends StatelessWidget {
  const CalendarSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xfff7f7ff),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          TopContainer(),
          CalendarSection(),
          MeetingSection()
        ]),
      ),
    );
  }
}
