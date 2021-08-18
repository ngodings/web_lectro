import 'package:flutter/material.dart';
import 'package:web_lectro/PlatformService.dart';

import 'ProfileCard.dart';

class ProfilePanle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = PlatformService.isMobile(context) ? true : false;
    double _width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.fromLTRB(isMobile ? 15 : _width / 10,
            isMobile ? 0 : 150, isMobile ? 15 : _width / 10, 10),
        child: Stack(children: [
          ProfileCard(),
          Expanded(
              child:
                  Container(alignment: Alignment.center, child: ProfileImage()))
        ]));
  }

  // ignore: non_constant_identifier_names
  Widget ProfileImage() => CircleAvatar(
      radius: 70, backgroundImage: AssetImage('assets/images/person.png'));
}
