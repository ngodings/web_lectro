import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_lectro/NavigationBar/src/CompanyName.dart';
import 'package:web_lectro/NavigationBar/src/NavBar.dart';
import 'package:web_lectro/NavigationBar/src/NavBarItem.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Color(0xFF1B5E20),
        child: Stack(children: [
          CompanyName(),
          Align(
            alignment: Alignment.center,
            child: NavBar(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavBarItem(
              icon: FontAwesomeIcons.signOutAlt,
              active: false,
            ),
          ),
        ]),
      ),
    );
  }
}
