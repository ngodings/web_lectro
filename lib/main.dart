import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:web_lectro/CalendarSpace/CalendarSpace.dart';
import 'package:web_lectro/Dashboard/Dashboard.dart';

import 'NavigationBar/NavigationBar.dart';
import 'Screens/ProfileScreen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              //LoginPage()
              // NavigationBar(),
              // Dashboard(),
              // CalendarSpace()
              ProfileScreen()
            ])));
  }
}
