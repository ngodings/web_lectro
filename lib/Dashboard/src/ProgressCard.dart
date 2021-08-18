import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressCard extends StatefulWidget {
  final Color color;
  final Color progressIndicatorColor;
  final String projectName;
  final String percentComplete;
  final IconData icon;
  ProgressCard({
    required this.color,
    required this.progressIndicatorColor,
    required this.percentComplete,
    required this.projectName,
    required this.icon,
  });
  //const ProgressCard({Key? key}) : super(key: key);

  @override
  _ProgressCardState createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
            color: hovered ? widget.color : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              )
            ]),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: Icon(
                      widget.icon,
                      color: !hovered ? Colors.white : Colors.black,
                      size: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    child: Text(
                      widget.projectName,
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: hovered ? Colors.white : Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(children: [
                SizedBox(
                  width: 18.0,
                ),
                Container(
                  height: 13.0,
                  width: 13.0,
                  child: Icon(
                    FontAwesomeIcons.bookOpen,
                    size: 13.0,
                    color: hovered ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  child: Text(
                    '8 package',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                        color: hovered ? Colors.white : Colors.black),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.0,
              ),
              Row(children: [
                SizedBox(
                  width: 18.0,
                ),
                Container(
                  height: 13.0,
                  width: 13.0,
                  child: Icon(
                    FontAwesomeIcons.clock,
                    size: 13.0,
                    color: hovered ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  child: Text(
                    'Until 10 September 2020',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                        color: hovered ? Colors.white : Colors.black),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 8.0, left: 135.0),
                child: Text(
                  widget.percentComplete,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.5,
                    color: hovered ? Colors.white : Colors.black,
                  ),
                ),
              ),
              AnimatedContainer(
                  duration: Duration(milliseconds: 275),
                  margin: EdgeInsets.only(top: 5.0),
                  height: 6.0,
                  width: 160,
                  decoration: BoxDecoration(
                    color: hovered
                        ? widget.progressIndicatorColor
                        : Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 275),
                          height: 6.0,
                          width: (double.parse(
                                      widget.percentComplete.substring(0, 1)) /
                                  10) *
                              160.0,
                          decoration: BoxDecoration(
                            color: hovered ? Colors.white : widget.color,
                            borderRadius: BorderRadius.circular(20.0),
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
