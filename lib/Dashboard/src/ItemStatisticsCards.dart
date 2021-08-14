import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ItemStatisticsCards extends StatelessWidget {
  const ItemStatisticsCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ItemStatisticsCard(
          count: '125',
          name: 'All finished package',
          desc: '2 package out of time',
          progress: 0.75,
          progressString: '75%',
          color: Color(0xffFAAA1E)),
      ItemStatisticsCard(
          count: '125',
          name: 'All finished package',
          desc: '2 package out of time',
          progress: 0.75,
          progressString: '75%',
          color: Colors.greenAccent),
      ItemStatisticsCard(
          count: '125',
          name: 'All finished package',
          desc: '2 package out of time',
          progress: 0.75,
          progressString: '75%',
          color: Colors.tealAccent)
    ]);
  }
}

class ItemStatisticsCard extends StatelessWidget {
  //const ItemStatisticsCard({Key? key}) : super(key: key);
  final String count;
  final String name;
  final String desc;
  final double progress;
  final String progressString;
  final Color color;

  ItemStatisticsCard(
      {required this.count,
      required this.name,
      required this.desc,
      required this.progress,
      required this.progressString,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(left: 40.0, right: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 85.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(count,
                    style: GoogleFonts.quicksand(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text(name,
                    style: GoogleFonts.quicksand(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 8.0,
                ),
                Text(desc,
                    style: GoogleFonts.quicksand(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 55.0,
            lineWidth: 4.5,
            percent: progress,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              progressString,
              style: GoogleFonts.quicksand(
                fontSize: 11.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            progressColor: Colors.white,
            startAngle: 270,
            backgroundColor: Colors.white,
          )
        ],
      ),
    ));
  }
}
