import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_lectro/NavigationBar/src/NavBarItem.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: FontAwesomeIcons.home,
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            icon: FontAwesomeIcons.microchip,
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            icon: FontAwesomeIcons.server,
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            icon: FontAwesomeIcons.memory,
            active: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            icon: FontAwesomeIcons.cog,
            active: selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
