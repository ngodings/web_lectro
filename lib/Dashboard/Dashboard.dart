import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_lectro/Dashboard/src/ItemStatisticsCards.dart';
import 'package:web_lectro/Dashboard/src/Package.dart';
import 'package:web_lectro/Dashboard/src/ProgressCard.dart';
import 'package:web_lectro/Dashboard/src/SubHeader.dart';
import 'package:web_lectro/Dashboard/src/Tabs.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text(
                'Lectro Package',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Tabs(),
            SizedBox(
              width: 15.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProgressCard(
                      color: Color(0xFF1B5E20),
                      progressIndicatorColor: Colors.redAccent,
                      percentComplete: '34%',
                      projectName: 'Micro',
                      icon: FontAwesomeIcons.microchip),
                  ProgressCard(
                      color: Color(0xFF1B5E20),
                      progressIndicatorColor: Colors.blueAccent,
                      percentComplete: '50%',
                      projectName: 'Lamp',
                      icon: FontAwesomeIcons.lightbulb),
                  ProgressCard(
                      color: Color(0xFF1B5E20),
                      progressIndicatorColor: Colors.yellowAccent,
                      percentComplete: '85%',
                      projectName: 'Battery',
                      icon: FontAwesomeIcons.batteryFull)
                ],
              ),
            ),
            SubHeader(
              title: 'New Package Offer',
            ),
            Package(
              color: Colors.blue,
              et: '8 month',
              members: '90 user',
              packageName: 'Smart Battery',
              price: '90 dolars',
            ),
            Package(
              color: Colors.blue,
              et: '1 month',
              members: '30 user',
              packageName: 'Fast Charging Battery',
              price: '30 dolars',
            ),
            SubHeader(
              title: 'Package Statistics',
            ),
            ItemStatisticsCards(),
          ],
        ),
      ),
    );
  }
}
