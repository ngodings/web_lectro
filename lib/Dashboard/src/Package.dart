import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Package extends StatefulWidget {
  //const Package({ Key? key }) : super(key: key);
  final String packageName;
  final Color color;
  final String members;
  final String et;
  final String price;

  Package({
    required this.packageName,
    required this.color,
    required this.members,
    required this.et,
    required this.price,
  });

  @override
  _PackageState createState() => _PackageState();
}

class _PackageState extends State<Package> {
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
        margin: EdgeInsets.only(bottom: 10.0, left: 40.0, right: 15.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: hovered
                ? [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.0,
                        blurRadius: 13.0)
                  ]
                : []),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        height: 28.0,
                        width: 28.0,
                        decoration: BoxDecoration(
                          color: widget.color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.folder,
                            color: widget.color,
                            size: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        widget.packageName,
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold, fontSize: 12.0
                            //18.44
                            ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 120.0),
                          child: Text(widget.members,
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                                color: Colors.black45,
                              ))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 120.0),
                          child: Text(widget.et,
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                                color: Colors.black45,
                              ))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 120.0),
                          child: Text(widget.price,
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                                color: Colors.black45,
                              )))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
